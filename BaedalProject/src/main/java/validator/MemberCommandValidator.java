package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import command.MemberCommand;

public class MemberCommandValidator implements Validator {

	public boolean supports(Class<?> clazz) {		 
		return false;
	}

	public void validate(Object target, Errors errors) {
		 MemberCommand memberCommand = (MemberCommand)target;		 
		 		 
		 // 비밀번호 재확인
		 if(memberCommand.getMemPw() != null && memberCommand.getMemPwCon() != null) {
			 if(!memberCommand.isMemPwEqualsMemPwCon()) {
				 errors.rejectValue("memPwCon", "nomatchPw");
			 }
		 };
		 
		 ValidationUtils.rejectIfEmpty(errors, "memId", "required");
		 ValidationUtils.rejectIfEmpty(errors, "memPw", "required");
		 ValidationUtils.rejectIfEmpty(errors, "memPwCon", "required");
		 ValidationUtils.rejectIfEmpty(errors, "memNickName", "required");
		 ValidationUtils.rejectIfEmpty(errors, "memEmail", "required");
		 ValidationUtils.rejectIfEmpty(errors, "memPhone", "required");
		
	}

}
