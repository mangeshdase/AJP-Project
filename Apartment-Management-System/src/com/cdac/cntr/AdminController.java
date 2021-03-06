package com.cdac.cntr;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cdac.dto.Admin;
import com.cdac.dto.Tenant;
import com.cdac.serv.AdminService;
import com.cdac.valid.TenantLoginValidator;
import com.cdac.valid.TenantValidator;

@Controller
public class AdminController {
	@Autowired
	private AdminService adminService;
	@Autowired
	private TenantValidator tenantValidator;
	@Autowired
	private TenantLoginValidator tenantloginValidator;
	
	@RequestMapping(value = "/prep_admin_log_form.htm", method = RequestMethod.GET)
	public String prepLogForm(ModelMap map) {
		map.put("admin",new Admin());
		return "admin_login_form";
		
	}
	
	
	@RequestMapping(value="/admin_login.htm",method = RequestMethod.POST)
	public String login(Admin admin, ModelMap map,HttpSession session){
		//tenantloginValidator.validate(admin, result);
		//if(result.hasErrors()) {
		//return "admin_form";
		//}
		boolean b = adminService.findAdmin(admin);
		if(b) {
			session.setAttribute("admin", admin);
		return "admin_home";
		}else
		{
			map.put("admin", new Admin());
			return "admin_login_form";
		}
		
	}
	
	@RequestMapping(value = "/tenant_list.htm",method = RequestMethod.GET)
	public String allTenants(ModelMap map,HttpSession session) {
		//String adminName = ((Admin)session.getAttribute("adminName")).getAdminName();
		int tenantId = ((Tenant)session.getAttribute("tenant")).getTenantId();
		List<Tenant> li = adminService.selectAll(tenantId);
		map.put("tenantList", li);
		return "tenant_list";
	}

	@RequestMapping(value = "/tenant_update.htm",method = RequestMethod.POST)
	public String tenantUpdate(Tenant tenant,ModelMap map,HttpSession session) {
		
		int tenantId = ((Tenant)session.getAttribute("tenant")).getTenantId();
		tenant.setTenantId(tenantId);
		adminService.modifyTenant(tenant);
			
		List<Tenant> li = adminService.selectAll(tenantId);
		map.put("expList", li);
		return "tenant_list";
	}

}
