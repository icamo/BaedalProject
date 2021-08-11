package service.member;

import org.springframework.beans.factory.annotation.Autowired;

import repository.MemberRepository;

public class DuplicateIdCheckService {
	@Autowired
	MemberRepository memberRepository;
	
	public int dupIdChk(String memId) {
		 int result = memberRepository.idDupChk(memId);
		 return result;
	}
}
