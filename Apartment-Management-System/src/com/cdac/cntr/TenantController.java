package com.cdac.cntr;

import javax.activation.MailcapCommandMap;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cdac.dto.Tenant;
import com.cdac.serv.TenantService;
import com.cdac.valid.TenantLoginValidator;
import com.cdac.valid.TenantValidator;

@Controller
public class TenantController {
	@Autowired
	private TenantService tenantService;
	@Autowired
	private TenantValidator tenantValidator;
	@Autowired
	private TenantLoginValidator tenantloginValidator;
	@Autowired
	private MailSender mailSender;
	@RequestMapping(value="/prep_reg_form.htm", method = RequestMethod.GET)
	public String prepRegForm(ModelMap map) {
		map.put("tenant", new Tenant());
		
		return "reg_form";
		
	}
	@RequestMapping(value="/reg.htm", method=RequestMethod.POST)
	public String register(Tenant tenant,BindingResult result, ModelMap map) {
		tenantValidator.validate(tenant, result);
		if(result.hasErrors()) {
			return "reg_form";
		}else {
		tenantService.addTenant(tenant);
		return "login_form";
		}
	}
	
	@RequestMapping(value = "/prep_log_form.htm", method = RequestMethod.GET)
	public String prepLogForm(ModelMap map) {
		map.put("tenant", new Tenant());
		return "login_form";
		
	}
	
	@RequestMapping(value="/login.htm",method = RequestMethod.POST)
	public String login(Tenant tenant, BindingResult result, ModelMap map,HttpSession session){
		tenantloginValidator.validate(tenant, result);
		if(result.hasErrors()) {
			return "login_form";
		}
		boolean b = tenantService.findTenant(tenant);
		if(b) {
			session.setAttribute("tenant", tenant);
		return "home";
		}else
		{
			map.put("tenant", new Tenant());
			return "login_form";
		}
		
	}
	
	@RequestMapping(value = "/forgot_password.htm", method =RequestMethod.POST)
	public String forgotPassword(@RequestParam String tenantEmail, ModelMap map) {
		String pass = tenantService.forgotPassword(tenantEmail);
		String msg = "You are not registered";
		if(pass != null) {
			SimpleMailMessage message = new SimpleMailMessage();
			message.setFrom("dasemangesh14@gmail.com");
			message.setTo(tenantEmail);
			message.setSubject("Your Password ");
			message.setText(pass);
		
			mailSender.send(message);
		msg = "check the mail for password";
			
		}
		map.put("msg", msg);
		return "info";
	}

}
