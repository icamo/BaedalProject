package service.foods;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import model.AuthInfoDTO;
import repository.FoodsRepository;

public class CartCheckService {
	@Autowired
	FoodsRepository foodsRepository;
	
	public String cartCheck(HttpSession session) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		String comId = foodsRepository.cartCheck(authInfo.getUserId());		
		return comId;
	}
}
