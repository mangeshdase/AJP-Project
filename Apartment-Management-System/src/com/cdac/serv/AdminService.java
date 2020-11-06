package com.cdac.serv;

import java.util.List;

import com.cdac.dto.Admin;
import com.cdac.dto.Tenant;


public interface AdminService {
	void addAdmin(Admin admin);
	boolean findAdmin(Admin admin);
	void removeTenant(int tenantId);
	void modifyTenant(Tenant tenant);
	List<Tenant> selectAll(int tenantId);
	
}
