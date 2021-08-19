package service.foods;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.MenuDTO;
import model.MenuTitleDTO;
import repository.FoodsRepository;

public class MenuListService {
	@Autowired
	FoodsRepository foodsRepository;
	
	public void menuList(String titleNum, String comId, Model model) {
		MenuTitleDTO dto = new MenuTitleDTO();
		dto.setComId(comId);
		dto.setMenuTitleNum(titleNum);
		List<MenuDTO> menu = foodsRepository.menuList(dto);
		model.addAttribute("menu", menu);
	}
}
