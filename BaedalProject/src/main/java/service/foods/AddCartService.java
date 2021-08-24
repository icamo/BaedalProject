package service.foods;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import command.MenuCommand;
import model.AuthInfoDTO;
import model.BasketDTO;
import repository.BasketRepository;
import repository.FoodsRepository;

public class AddCartService {
	@Autowired
	FoodsRepository foodsRepository;
	
	public void addCart(MenuCommand menuCommand, HttpSession session) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		String userId = authInfo.getUserId();	
		BasketDTO dto = new BasketDTO();
		dto.setComId(menuCommand.getComId());
		dto.setMemId(userId);
		dto.setMenuId(menuCommand.getMenuId());
		dto.setMenuPrice(menuCommand.getMenuPrice());
		dto.setMenuCount(menuCommand.getMenuCount());
		foodsRepository.addCart(dto);
	}
}
