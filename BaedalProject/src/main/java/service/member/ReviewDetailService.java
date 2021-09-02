package service.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import command.ReviewDetailCommand;
import repository.MemberRepository;

public class ReviewDetailService {
	@Autowired
	MemberRepository memberRepository;
	
	public void reviewDetail(String orderNum,HttpSession session,Model model) {
		ReviewDetailCommand dto = 
				memberRepository.reviewDetail(orderNum);
		model.addAttribute("reviewDetail",dto);
	}
	

}
