package com.cdac.dao;

import java.util.List;

import com.cdac.dto.Admin;
import com.cdac.dto.Tenant;


public interface AdminDao {
	void insertAdmin(Admin admin);
	boolean checkAdmin(Admin admin);
	void insertTenant(Tenant tenant);
	void deleteTenant(int tenantId);
	Tenant selectTenant(int tenantId);
	void updateTenant(Tenant tenant);
	List<Tenant> selectAll(int tenantId);
}
