package service.basket;

import org.springframework.beans.factory.annotation.Autowired;

import repository.BasketRepository;

public class HeaderCartService {
	@Autowired
	BasketRepository basketRepository;
	
	public String headerCart(String memId) {
		String comId = basketRepository.headerCart(memId);
		return comId;
	}
}
