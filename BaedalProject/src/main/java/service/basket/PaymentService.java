package service.basket;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.AuthInfoDTO;
import model.BasketDTO;
import model.MemberDTO;
import repository.BasketRepository;
import repository.MemberRepository;

public class PaymentService {

	
	@Autowired
	BasketRepository basketRepository;
	@Autowired
	MemberRepository memberRepository;
	
	public void payment(String memId, HttpSession session ,Model model) {	
		List<BasketDTO> basketlist = basketRepository.basketList(memId);
		model.addAttribute("basketlist",basketlist);
	}
	
	public void memDetail(HttpSession session, Model model) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		String memId = authInfo.getUserId();
		MemberDTO dto = memberRepository.memDetail(memId);
		model.addAttribute("dto", dto);
		
	}
	
	
}
