package service.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.validation.Errors;

import Model.AuthInfoDTO;
import Model.MemberDTO;
import command.MemberCommand;
import repository.MemberRepository;

public class MemberPwUpdateService {
	@Autowired
	MemberRepository memberRepository;
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	
	public void memPwUpdate(MemberCommand memberCommand, Errors errors , HttpSession session) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		MemberDTO mem = memberRepository.memInfo(authInfo.getUserId());
		if(bCryptPasswordEncoder.matches(memberCommand.getOldPw(), 
				mem.getCeoPw())) {
			MemberDTO dto = new MemberDTO();
			dto.setCeoId(authInfo.getUserId());
			dto.setCeoPw(bCryptPasswordEncoder.encode(memberCommand.getCeoPw()));
			memberRepository.memPwUpdate(dto);
		}else {
			errors.rejectValue("oldPw", "notPw");
		}
	}
}
