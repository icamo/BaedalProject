package controller.myShop;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.myShop.MenuTitleService;

@Controller
@RequestMapping("myShop/menu")
public class MyShopMenuController {
	
	@Autowired
	MenuTitleService menuTitleService; 
	
	@RequestMapping("menuList")
	public String menuList(Model model, HttpSession session) {
		menuTitleService.titleList(model, session);
		return "myShop/menu/menuList";
	}
	
	@RequestMapping("menuTitleResist")
	public String menuTitle() {
		
		return "myShop/menu/menuTitleResist";
	}
	
	@RequestMapping("menuTitleResistCon")
	public String menuTitleResist(@RequestParam(value="menuTitleName")String menuTitleName, HttpSession session) {
		menuTitleService.menuTitleResist(menuTitleName, session);
		return "redirect:menuList";
	}
	
	@RequestMapping("titleModify")
	public String titleModify(@RequestParam(value="menuTitleNum")String menuTitleNum, Model model) {
		menuTitleService.titleModify(menuTitleNum, model);
		return "myShop/menu/titleModify";
	}
	
	@RequestMapping("titleModifyCon")
	public String titleModifyCon(@RequestParam(value="menuTitleNum")String menuTitleNum,
			@RequestParam(value="menuTitleName")String menuTitleName) {
		menuTitleService.titleModifyCon(menuTitleName, menuTitleNum);
		return "redirect:menuList";
	}
}
