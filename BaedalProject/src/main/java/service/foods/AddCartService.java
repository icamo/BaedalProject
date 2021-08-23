package service.foods;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import command.MenuCommand;
import model.AuthInfoDTO;
import model.BasketDTO;
import repository.FoodsRepository;

public class AddCartService {
	@Autowired
	FoodsRepository foodsRepository;
	
	public void addCart(MenuCommand menuCommand, HttpSession session) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		String userId = authInfo.getUserId();
		System.out.println(userId);

		
		BasketDTO dto = new BasketDTO();
	}
}
