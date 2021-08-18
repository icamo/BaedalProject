package service.foods;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.ShopDTO;
import repository.FoodsRepository;

public class StoreListService {
	@Autowired
	FoodsRepository foodsRepository;
	
	public void storeList(String category, Model model) {
		List<ShopDTO> list = foodsRepository.shopList(category);
		model.addAttribute("lists", list);
	}
}
