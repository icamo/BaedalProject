package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import command.AdminCommand;

public class AdminPwChangeValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void validate(Object target, Errors errors) {
		AdminCommand adminCommand = (AdminCommand) target;
		if(!adminCommand.getAdminPw().equals(adminCommand.getAdminPwCon())){
			errors.rejectValue("adminPwCon", "nomatch");
		}
		ValidationUtils.rejectIfEmpty(errors, "oldPw", "required");
		ValidationUtils.rejectIfEmpty(errors, "adminPw", "required");
		ValidationUtils.rejectIfEmpty(errors, "adminPwCon", "required");
	}

}
