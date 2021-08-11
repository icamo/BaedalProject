package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import command.MemberCommand;

public class MemberPasswordValidator implements Validator{

	public boolean supports(Class<?> clazz) {
		return false;
	}

	public void validate(Object target, Errors errors) {
		MemberCommand regReq = (MemberCommand) target;
		ValidationUtils.rejectIfEmpty(errors, "memPw", "required");
		ValidationUtils.rejectIfEmpty(errors, "newPw", "required");
		ValidationUtils.rejectIfEmpty(errors, "newPwCon", "required");
		if(!regReq.getMemPw().isEmpty()) {
			if(!regReq.isNewPwEqualsNewPwCon()) {
				errors.rejectValue("newPwCon", "nomatchPw");
			}
		}
	}

}
