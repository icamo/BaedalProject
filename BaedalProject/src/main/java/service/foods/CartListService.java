package service.foods;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.AuthInfoDTO;
import model.BasketDTO;
import repository.FoodsRepository;

public class CartListService {
	@Autowired
	FoodsRepository foodsRepository;
	
	public void cartList(Model model, HttpSession session) {
		try{
			AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
			List<BasketDTO> cartList = foodsRepository.cartList(authInfo.getUserId());
			model.addAttribute("cartList", cartList);
		}catch (Exception e) {
			
		}
		
	}
}
