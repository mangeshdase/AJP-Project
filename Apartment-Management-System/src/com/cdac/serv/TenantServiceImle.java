package com.cdac.serv;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdac.dao.TenantDao;
import com.cdac.dto.Tenant;
@Service
public class TenantServiceImle implements TenantService{

	@Autowired
	private TenantDao tenantDao;
	
	@Override
	public void addTenant(Tenant tenant) {
		tenantDao.insertTenant(tenant);
		
	}

	@Override
	public boolean findTenant(Tenant tenant) {
		
		return tenantDao.checkTenant(tenant);
	}

	@Override
	public String forgotPassword(String tenantEmail) {
		
		return tenantDao.forgotPassword(tenantEmail);
	}

	@Override
	public void uploadImage(String profilePic, int tenantId) {
		tenantDao.uploadImage(profilePic, tenantId);
		
	}

}
