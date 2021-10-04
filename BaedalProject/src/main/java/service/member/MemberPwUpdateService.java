package service.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.validation.Errors;

import command.MemberCommand;
import model.AuthInfoDTO;
import model.MemberDTO;
import repository.MemberRepository;

public class MemberPwUpdateService {
	@Autowired
	MemberRepository memberRepository;
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;
	
	public void memPwUpdate(MemberCommand memberCommand, HttpSession session, Errors errors) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		MemberDTO mem = memberRepository.memDetail(authInfo.getUserId());
		
		if(bcryptPasswordEncoder.matches(memberCommand.getMemPw(),mem.getMemPw())) {
			MemberDTO dto = new MemberDTO();
			dto.setMemId(authInfo.getUserId());
			dto.setMemPw(bcryptPasswordEncoder.encode(memberCommand.getNewPw()));
			memberRepository.memPwUpdate(dto);
		} else {
			errors.rejectValue("memPw", "notPw");
		}
	}
}
