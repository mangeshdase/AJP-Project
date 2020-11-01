package com.cdac.serv;

import com.cdac.dto.Tenant;

public interface TenantService {
	void addTenant(Tenant tenant);
	boolean findTenant(Tenant tenant);
}
