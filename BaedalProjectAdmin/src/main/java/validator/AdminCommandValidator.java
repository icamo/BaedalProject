package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import command.AdminCommand;

public class AdminCommandValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void validate(Object target, Errors errors) {
		
		AdminCommand adminCommand = (AdminCommand) target;
		
		if(adminCommand.getAdminPw() != null && adminCommand.getAdminPwCon() != null) {
			if(!adminCommand.getAdminPw().equals(adminCommand.getAdminPwCon())) {
				errors.rejectValue("adminPwCon", "nomatch");
			}
		}
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "adminId", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "adminNum", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "adminPw", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "adminPwCon", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "adminEmail", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "adminContact", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "adminDept", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "adminJob", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "adminName", "required");
		
	}

	
}
