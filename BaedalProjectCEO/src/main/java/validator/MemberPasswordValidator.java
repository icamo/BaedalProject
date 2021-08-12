package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import command.MemberCommand;

public class MemberPasswordValidator implements Validator{

	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return false;
	}

	public void validate(Object target, Errors errors) {
		MemberCommand regReq = (MemberCommand) target;
		ValidationUtils.rejectIfEmpty(errors, "oldPw", "required");
		ValidationUtils.rejectIfEmpty(errors, "ceoPw", "required");
		ValidationUtils.rejectIfEmpty(errors, "ceoPwCon", "required");
		if(!regReq.getCeoPw().isEmpty()) {
			if(!regReq.isMemPwEqualsMemPwCon()) {
				errors.rejectValue("ceoPwCon", "nomatch");
			}
		}
	}
}