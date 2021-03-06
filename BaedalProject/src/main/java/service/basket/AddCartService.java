package service.basket;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import command.MenuCommand;
import model.AuthInfoDTO;
import model.BasketDTO;
import repository.BasketRepository;


public class AddCartService {
	@Autowired
	BasketRepository basketRepository;
	
	public void addCart(MenuCommand menuCommand, HttpSession session) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		String userId = authInfo.getUserId();	
		BasketDTO dto = new BasketDTO();
		dto.setComId(menuCommand.getComId());
		dto.setMemId(userId);
		dto.setMenuId(menuCommand.getMenuId());
		dto.setMenuPrice(menuCommand.getMenuPrice());
		dto.setMenuCount(menuCommand.getMenuCount());
		basketRepository.addCart(dto);
	}
}
