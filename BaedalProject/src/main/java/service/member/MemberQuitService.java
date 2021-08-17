package service.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;

import command.MemberCommand;
import model.AuthInfoDTO;
import repository.MemberRepository;

public class MemberQuitService {
	@Autowired
	MemberRepository memberRepository;
	
	public void memQuit(HttpSession session) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
			memberRepository.memQuit(authInfo.getUserId());			
	}
}
