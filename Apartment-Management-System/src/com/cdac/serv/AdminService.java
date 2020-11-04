package com.cdac.serv;

import com.cdac.dto.Admin;


public interface AdminService {
	void addAdmin(Admin admin);
	boolean findAdmin(Admin admin);
}
