package service.member;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.AuthInfoDTO;
import model.BasketDTO;
import model.MemberDTO;
import repository.BasketRepository;
import repository.MemberRepository;

public class BasketLIstService {
	
	@Autowired
	BasketRepository basketRepository;
	@Autowired
	MemberRepository memberRepository;
	
	public void basketList(BasketDTO basketDTO, HttpSession session ,Model model) {
		
		List<BasketDTO> basketlist = basketRepository.basketList(basketDTO);
		model.addAttribute("basketlist",basketlist);
	}
	
}
