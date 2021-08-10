package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import command.MemberCommand;

public class MemberCommandValidator implements Validator{
	public boolean supports(Class<?> clazz) {
		return false;
	}
	public void validate(Object target, Errors errors) {
		MemberCommand memberCommand = (MemberCommand)target;
		if(memberCommand.getCeoPw() != null && memberCommand.getCeoPwCon() != null) {
			if(!memberCommand.isMemPwEqualsMemPwCon()) {
				errors.rejectValue("CeoPwCon", "nomatch");
			}
		}
		ValidationUtils.rejectIfEmpty(errors, "CeoId", "required");
		ValidationUtils.rejectIfEmpty(errors, "CeoPw", "required");
		ValidationUtils.rejectIfEmpty(errors, "CeoPwCon", "required");
		ValidationUtils.rejectIfEmpty(errors, "CeoEmail", "required");
		ValidationUtils.rejectIfEmpty(errors, "CeoPh", "required");
	}
}
