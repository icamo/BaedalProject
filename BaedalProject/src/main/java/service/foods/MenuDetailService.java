package service.foods;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.MenuDTO;
import repository.FoodsRepository;

public class MenuDetailService {
	@Autowired
	FoodsRepository foodsRepository;
	
	public void menuDetail(String menuId, Model model) {
		MenuDTO dto = foodsRepository.menuDetail(menuId);
		model.addAttribute("dto", dto);
	}
}
