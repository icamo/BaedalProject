package service.myShop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.MenuChoiceDTO;
import Model.MenuDTO;
import command.MenuChoiceCommand;
import repository.MyShopMenuRepository;

public class MenuChoiceService {

	@Autowired
	MyShopMenuRepository myShopMenuRepository;
	
	public void choiceResist(MenuChoiceCommand menuChoiceCommand) {
		
		MenuChoiceDTO dto = new MenuChoiceDTO();
		dto.setChoiceTitle(menuChoiceCommand.getChoiceTitle());
		dto.setChoiceType(menuChoiceCommand.getChoiceType());
		dto.setMenuId(menuChoiceCommand.getMenuId());
		
		System.out.println(dto.getChoiceTitle());
		System.out.println(dto.getMenuId());
		System.out.println(dto.getChoiceType());
	
		myShopMenuRepository.choiceResist(dto);
	}

	public void menuChoiceList(String menuId, Model model) {
		List<MenuChoiceDTO> list = myShopMenuRepository.choiceList(menuId);
		model.addAttribute("lists", list);
	}

	public void choiceInfo(String menuChoiceNum, Model model) {
		System.out.println(menuChoiceNum);
		MenuChoiceDTO dto = myShopMenuRepository.choiceInfo(menuChoiceNum);
		model.addAttribute("dto", dto);
		MenuDTO dto2 = myShopMenuRepository.menuInfo(dto.getMenuId());
		model.addAttribute("dto2", dto2);
		List<MenuChoiceDTO> list = myShopMenuRepository.choiceOptionInfo(menuChoiceNum);
		model.addAttribute("lists", list);
	}

	public void choiceOptionResist(MenuChoiceCommand menuChoiceCommand, Model model) {
		MenuChoiceDTO dto = new MenuChoiceDTO();
		dto.setMenuChoiceNum(menuChoiceCommand.getMenuChoiceNum());
		dto.setChoiceOption(menuChoiceCommand.getChoiceOption());
		dto.setChoicePrice(menuChoiceCommand.getChoicePrice());
		myShopMenuRepository.choiceOptionResist(dto);
	}
}
