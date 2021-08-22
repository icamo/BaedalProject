package service.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.AuthInfoDTO;
import model.MemberDTO;
import repository.MemberRepository;

public class MemberMyPageDetailService {
	@Autowired
	MemberRepository memberRepository;
	
	public void memDetail(HttpSession session, Model model) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		String memId = authInfo.getUserId();
		MemberDTO dto = memberRepository.memDetail(memId);
		model.addAttribute("dto", dto);
	}
}
