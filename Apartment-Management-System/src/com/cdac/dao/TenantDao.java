package com.cdac.dao;

import com.cdac.dto.Tenant;

public interface TenantDao {
	void insertTenant(Tenant tenant);
	boolean checkTenant(Tenant tenant);
}
