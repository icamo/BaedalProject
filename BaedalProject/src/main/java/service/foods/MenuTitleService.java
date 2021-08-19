package service.foods;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.MenuTitleDTO;
import repository.FoodsRepository;

public class MenuTitleService {
	@Autowired
	FoodsRepository foodsRepository;
	
	public void menuTitle(String comId, Model model) {
		List<MenuTitleDTO> menuTitle = foodsRepository.menuTitle(comId);
		model.addAttribute("menuTitle", menuTitle);
	}
}
