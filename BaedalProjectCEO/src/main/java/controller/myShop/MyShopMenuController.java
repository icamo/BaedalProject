package controller.myShop;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.MenuCommand;
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
	
	@RequestMapping("detailMenuList")
	public String detailMenuList(@RequestParam(value="menuTitleNum")String menuTitleNum, Model model) {
		menuTitleService.titleInfo(menuTitleNum, model);
		menuTitleService.detailMenuList(menuTitleNum, model);
		return "myShop/menu/detailMenuList";
	}
	
	@RequestMapping("detailMenuResist")
	public String detailMenuResist(@RequestParam(value="menuTitleNum")String menuTitleNum, Model model) {
		menuTitleService.titleInfo(menuTitleNum, model);
		return "myShop/menu/detailMenuResist";
	}
	
	@RequestMapping("menuResist")
	public String menuResist(MenuCommand menuCommand, HttpSession session, Model model) {
		menuTitleService.menuResist(menuCommand, session);
		model.addAttribute("menuTitleNum", menuCommand.getMenuTitleNum());
		return "redirect:detailMenuList";
	}
	
	@RequestMapping("menuSell")
	public String menuSell(@RequestParam(value="menuId")String menuId, Model model) {
		menuTitleService.menuSell(menuId, model);
		return "redirect:detailMenuList";
	}
	
	
}
