package com.cdac.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tenant")
public class Tenant {
	@Id
	@GeneratedValue
	@Column(name = "tenant_Id")
	 private int tenantId;
	
	@Column(name = "tenant_name")
	 private String tenantName;
	
	@Column(name = "tenant_pass")
	 private String tenantPass;
	
	@Column(name = "email_id")
	 private String tenantEmail;
	
	@Column(name = "mobile_no")
	 private String tenantMobile;
	
	@Column(name = "blok_no")
	 private String tenantBlock;
	
	@Column(name = "flat_no")
	 private String tenantFlatNo;
	
	@Column(name = "flat_type")
	 private String tenantFlatType;
	public Tenant() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Tenant(int tenantId, String tenantName, String tenantPass, String tenantEmail, String tenantMobile,
			String tenantBlock, String tenantFlatNo, String tenantFlatType) {
		super();
		this.tenantId = tenantId;
		this.tenantName = tenantName;
		this.tenantPass = tenantPass;
		this.tenantEmail = tenantEmail;
		this.tenantMobile = tenantMobile;
		this.tenantBlock = tenantBlock;
		this.tenantFlatNo = tenantFlatNo;
		this.tenantFlatType = tenantFlatType;
	}
	public Tenant(int tenantId) {
		this.tenantId = tenantId;
	}

	public int getTenantId() {
		return tenantId;
	}
	public void setTenantId(int tenantId) {
		this.tenantId = tenantId;
	}
	public String getTenantName() {
		return tenantName;
	}
	public void setTenantName(String tenantName) {
		this.tenantName = tenantName;
	}
	public String getTenantPass() {
		return tenantPass;
	}
	public void setTenantPass(String tenantPass) {
		this.tenantPass = tenantPass;
	}
	public String getTenantEmail() {
		return tenantEmail;
	}
	public void setTenantEmail(String tenantEmail) {
		this.tenantEmail = tenantEmail;
	}
	public String getTenantMobile() {
		return tenantMobile;
	}
	public void setTenantMobile(String tenantMobile) {
		this.tenantMobile = tenantMobile;
	}
	public String getTenantBlock() {
		return tenantBlock;
	}
	public void setTenantBlock(String tenantBlock) {
		this.tenantBlock = tenantBlock;
	}
	public String getTenantFlatNo() {
		return tenantFlatNo;
	}
	public void setTenantFlatNo(String tenantFlatNo) {
		this.tenantFlatNo = tenantFlatNo;
	}
	public String getTenantFlatType() {
		return tenantFlatType;
	}
	public void setTenantFlatType(String tenantFlatType) {
		this.tenantFlatType = tenantFlatType;
	}
	 
	 
}
