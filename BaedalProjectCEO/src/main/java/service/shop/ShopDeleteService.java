package service.shop;

import org.springframework.beans.factory.annotation.Autowired;

import repository.ShopRepository;

public class ShopDeleteService {
	@Autowired
	ShopRepository shopRepository;
	public void shopDel(String comId) {
		shopRepository.shopDel(comId);
	}
}
