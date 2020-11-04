package com.cdac.valid;

import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.cdac.dto.Tenant;
@Service
public class TenantLoginValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		
		return clazz.equals(Tenant.class);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "tenantName", "namKey", "Tenant Name Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "tenantPass", "passKey", "Tenant Password Required");
		//ValidationUtils.rejectIfEmptyOrWhitespace(errors, "tenantEmail", "mailKey", "Tenant MailId Required");
		//ValidationUtils.rejectIfEmptyOrWhitespace(errors, "tenantMobile", "numKey", "Tenant Mobile number Required");
		//ValidationUtils.rejectIfEmptyOrWhitespace(errors, "tenantBlock", "blcKey", "Tenant Block Required");
		//ValidationUtils.rejectIfEmptyOrWhitespace(errors, "tenantFlatNo", "fltKey", "Tenant Flat number Required");
		//ValidationUtils.rejectIfEmptyOrWhitespace(errors, "tenantFlatType", "typeKey", "Tenant Flat type Required");
		
		//Tenant tenant = (Tenant)target;
		//if(tenant.getTenantPass()!=null) {
			//if(tenant.getTenantPass().length()<4) {
				//errors.rejectValue("tenantPass", "passKey", "password should contain more 2 chars");
			//}
		//}
	}

}
