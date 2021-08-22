package service.member;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import model.AuthInfoDTO;
import model.BasketDTO;
import repository.BasketRepository;

public class BasketDelService {

	@Autowired
	BasketRepository basketRepository;
	
	public void basketDel(String basketNum, HttpSession session) {
		AuthInfoDTO authInfo = 
				(AuthInfoDTO)session.getAttribute("authInfo");
		String memId= authInfo.getUserId();
		BasketDTO BasketDTO = new BasketDTO();
		BasketDTO.setBasketNum(basketNum);
		BasketDTO.setMemId(memId);
		
		basketRepository.basketDel(BasketDTO);		
	}
}
	
