package validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import command.MemberCommand;
import repository.MemberRepository;

public class MemberCommandValidator implements Validator {
	@Autowired
	MemberRepository memberRepository;
	

	public boolean supports(Class<?> clazz) {		 
		return false;
	}

	public void validate(Object target, Errors errors) {
		 MemberCommand memberCommand = (MemberCommand)target;
		 
		 // 아이디 중복체크
		 String result = memberRepository.idDupChk(memberCommand.getMemId());
		 System.out.println(result);
		 		 
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
