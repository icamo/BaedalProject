package service.foods;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import model.AuthInfoDTO;
import model.BasketDTO;
import repository.FoodsRepository;

public class CartDeleteService {
	@Autowired
	FoodsRepository foodsRepository;
	
	public void cartOneDel(String menuId, HttpSession session) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		String memId = authInfo.getUserId();
		BasketDTO dto = new BasketDTO();
		dto.setMemId(memId);
		dto.setMenuId(menuId);
		foodsRepository.cartOneDel(dto);
	}
	
	public void cartAllDel(HttpSession session) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		String memId = authInfo.getUserId();
		foodsRepository.cartAllDel(memId);
	}
}
