package service.basket;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import model.AuthInfoDTO;
import model.BasketDTO;
import repository.BasketRepository;

public class BasketDelService {

	@Autowired
	BasketRepository basketRepository;
	
	public void basketDel(String menuId,HttpSession session) {
		BasketDTO BasketDTO = new BasketDTO();
		BasketDTO.setMenuId(menuId);
		
		basketRepository.basketDel(BasketDTO);		
	}
}
	
