package controller.myShop;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.myShop.MenuTitleService;

@Controller
@RequestMapping("myShop/menu")
public class MyShopMenuController {
	
	@Autowired
	MenuTitleService menuTitleService; 
	
	@RequestMapping("menuList")
	public String menuList() {
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
}
