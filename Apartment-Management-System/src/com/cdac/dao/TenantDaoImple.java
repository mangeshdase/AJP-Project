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

import com.cdac.dto.Tenant;

@Repository
public class TenantDaoImple implements TenantDao{
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	@Override
	public void insertTenant(Tenant tenant) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				session.save(tenant);
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
		});
	}

	@Override
	public boolean checkTenant(Tenant tenant) {
		boolean b = hibernateTemplate.execute(new HibernateCallback<Boolean>() {

			@Override
			public Boolean doInHibernate(Session session) throws HibernateException {
			 Transaction tr = session.beginTransaction();
			 Query q = session.createQuery("from Tenant where tenantName=? and tenantPass = ?");
			 q.setString(0, tenant.getTenantName());
			 q.setString(1, tenant.getTenantPass());
			 List<Tenant> li = q.list();
			 boolean flag = !li.isEmpty();
			 tenant.setTenantId(li.get(0).getTenantId());
			 tr.commit();
			 session.flush();
			 session.close();
			 
				return flag;
			}
		});
		return b;
	}

	@Override
	public String forgotPassword(String tenantEmail) {
		String password = hibernateTemplate.execute(new HibernateCallback<String>() {

			@Override
			public String doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				Query q = session.createQuery("from Tenant where tenantEmail=?");
				q.setString(0, tenantEmail);
				List<Tenant> li = q.list();
				String pass = null;
				if(!li.isEmpty())
					pass = li.get(0).getTenantPass();
				tr.commit();
				session.flush();
				session.close();
				return pass;
			}
		});
		return password;
	}

	@Override
	public void uploadImage(String profilePic, int tenantId) {
		// TODO Auto-generated method stub
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				Tenant tenant = (Tenant)session.get(Tenant.class, tenantId);
			
				return null;
			}
		
		});
	}

}
