package com.cdac.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.cdac.dto.Admin;
import com.cdac.dto.Tenant;

@Repository
public class AdminDaoImple implements AdminDao{
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	

	@Override
	public void insertAdmin(Admin admin){
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				session.save(admin);
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
		});
	}


	@Override
	public boolean checkAdmin(Admin admin) {
		boolean b = hibernateTemplate.execute(new HibernateCallback<Boolean>() {

			@Override
			public Boolean doInHibernate(Session session) throws HibernateException {
			 
				Transaction tr = session.beginTransaction();
			 Query q = session.createQuery("from Admin where adminName=? and adminPass = ?");
			 q.setString(0, admin.getAdminName());
			 q.setString(1, admin.getAdminPass());
			 List<Admin> li = q.list();
			 boolean flag = !li.isEmpty();
			 //admin.setTenantId(li.get(0).getTenantId());
			 tr.commit();
			 session.flush();
			 session.close();
			 
				return flag;
			}
		});
		return b;
	}


	@Override
	public void insertTenant(Tenant tenant) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void deleteTenant(int tenantId) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				session.delete(new Tenant(tenantId));
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
			
		});
		
	}


	@Override
	public Tenant selectTenant(int tenantId) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public void updateTenant(Tenant tenant) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public List<Tenant> selectAll(int tenantId) {
		List<Tenant> tenantList = hibernateTemplate.execute(new HibernateCallback<List<Tenant>>() {

			@Override
			public List<Tenant> doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				Query q = session.createQuery("from Expense where tenantId = ?");
				q.setInteger(0, tenantId);
				List<Tenant> li = q.list();
				System.out.println(li); 
				tr.commit();
				session.flush();
				session.close();
				return li;
			}
			
		});
		return tenantList;
	}
	
	
	
	

}
