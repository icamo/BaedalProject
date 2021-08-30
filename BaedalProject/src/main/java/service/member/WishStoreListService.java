package service.member;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.AuthInfoDTO;
import model.ShopDTO;
import repository.MemberRepository;

public class WishStoreListService {
	@Autowired
	MemberRepository memberRepository;
	
	public void wishStoreList(HttpSession session, Model model) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		String memId = authInfo.getUserId();
		List<ShopDTO> list = memberRepository.wishStoreList(memId);		
		model.addAttribute("list", list);
	}
}
