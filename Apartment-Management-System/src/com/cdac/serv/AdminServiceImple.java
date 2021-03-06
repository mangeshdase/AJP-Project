package com.cdac.serv;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdac.dao.AdminDao;
import com.cdac.dao.TenantDao;
import com.cdac.dto.Admin;
import com.cdac.dto.Tenant;
@Service
public class AdminServiceImple implements AdminService{

	@Autowired
	private AdminDao adminDao;
	
	private TenantDao tenantDao;
	

	@Override
	public void addAdmin(Admin admin) {
		adminDao.insertAdmin(admin);
	}
	@Override
	public boolean findAdmin(Admin admin) {
		
		return adminDao.checkAdmin(admin);
	}
	@Override
	public void removeTenant(int tenantId) {
		adminDao.deleteTenant(tenantId);
		
	}
	
	@Override
	public List<Tenant> selectAll(int tenantId) {
		
		return adminDao.selectAll(tenantId);
	}
	@Override
	public void modifyTenant(Tenant tenant) {
		// TODO Auto-generated method stub
		
	}
	
	

}
