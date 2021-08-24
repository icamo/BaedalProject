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

public class BasketListService {	
	@Autowired
	BasketRepository basketRepository;
	
	public void basketList(String memId, HttpSession session ,Model model) {		
		List<BasketDTO> basketlist = basketRepository.basketList(memId);
		model.addAttribute("basketlist",basketlist);
	}
	
	

	
}
