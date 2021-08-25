package service.basket;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import model.AuthInfoDTO;
import model.BasketDTO;
import repository.BasketRepository;
import repository.FoodsRepository;

public class CartDeleteService {
	@Autowired
	BasketRepository basketRepository;
	
	public void cartOneDel(String menuId, HttpSession session) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		String memId = authInfo.getUserId();
		BasketDTO dto = new BasketDTO();
		dto.setMemId(memId);
		dto.setMenuId(menuId);
		basketRepository.cartOneDel(dto);
	}
	
	public void cartAllDel(HttpSession session) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		String memId = authInfo.getUserId();
		basketRepository.cartAllDel(memId);
	}
}
