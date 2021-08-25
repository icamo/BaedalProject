package service.basket;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import model.AuthInfoDTO;
import repository.BasketRepository;
import repository.FoodsRepository;

public class CartCheckService {
	@Autowired
	BasketRepository basketRepository;
	
	public String cartCheck(HttpSession session) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		String comId = basketRepository.cartCheck(authInfo.getUserId());		
		return comId;
	}
}
