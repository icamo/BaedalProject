package service.basket;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import command.MenuCommand;
import model.AuthInfoDTO;
import model.BasketDTO;
import repository.BasketRepository;

public class BasketInputService {
	
	@Autowired
	BasketRepository basketRepository;
	
	public void addCart(MenuCommand menuCommand, HttpSession session) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		String userId = authInfo.getUserId();
		System.out.println(userId);
		BasketDTO dto = new BasketDTO();
		dto.setMemId(userId);
		dto.setComId(menuCommand.getComId());
		dto.setMenuId(menuCommand.getMenuId());
		dto.setMenuPrice(menuCommand.getMenuPrice());
		dto.setChoiceMenu(menuCommand.getMenuChoice());
		basketRepository.addCart(dto);
	}

}
