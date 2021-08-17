package service.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;

import command.MemberCommand;
import repository.MemberRepository;

public class DuplicateCheckService {
	@Autowired
	MemberRepository memberRepository;
	
	public void dupIdChk(MemberCommand memberCommand, Errors errors) {
		 int result = memberRepository.idDupChk(memberCommand.getMemId());
		 if(result == 1) {
			 errors.rejectValue("memId", "duplicateId");
		 }
	}
	
	public void dupEmailChk(MemberCommand memberCommand, Errors errors) {
		 int result = memberRepository.emailDupChk(memberCommand.getMemEmail());
		 if(result == 1) {
			 errors.rejectValue("memEmail", "duplicateEmail");
		 }
	}
}
