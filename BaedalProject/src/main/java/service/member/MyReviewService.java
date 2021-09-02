package service.member;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import command.MyReviewCommand;
import model.AuthInfoDTO;
import repository.MemberRepository;

public class MyReviewService {
	@Autowired
	MemberRepository memberRepository;
	
	public void ReviewList(Model model, HttpSession session) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		String memId = authInfo.getUserId();
		List<MyReviewCommand> ReviewList = memberRepository.ReviewList(memId);
		model.addAttribute("ReviewList", ReviewList);
	}

}
