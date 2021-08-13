package service.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.AuthInfoDTO;
import Model.MemberDTO;
import repository.MemberRepository;

public class MyInfoService {
	@Autowired
	MemberRepository memberRepository;
	
	public void myInfo(HttpSession session,Model model) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		String ceoId = authInfo.getUserId();
		MemberDTO dto = memberRepository.memInfo(ceoId);
		model.addAttribute("dto",dto);
	}
}
