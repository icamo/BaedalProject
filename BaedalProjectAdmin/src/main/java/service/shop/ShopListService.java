package service.shop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.ShopDTO;
import repository.ShopRepository;

public class ShopListService {
	
	@Autowired
	ShopRepository shopRepository;

	public void shopList(Model model) {
		
		List<ShopDTO> list = shopRepository.shopList();
		model.addAttribute("shopList", list);
		
		System.out.println("list에 값이 있나요? : "+list.size());
	}

}
