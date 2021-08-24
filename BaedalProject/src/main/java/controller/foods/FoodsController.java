package controller.foods;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.MenuCommand;
import service.foods.AddCartService;
import service.foods.CartDeleteService;
import service.foods.CartListService;
import service.foods.CompanyDetailService;
import service.foods.MenuDetailService;
import service.foods.MenuListService;
import service.foods.MenuTitleService;

@Controller
@RequestMapping("foods")
public class FoodsController {
	@Autowired
	CompanyDetailService companyDetailService;
	@Autowired
	MenuTitleService menuTitleService;
	@Autowired
	MenuListService menuListService;
	@Autowired
	MenuDetailService menuDetailService;
	@Autowired
	AddCartService addCartService;
	@Autowired
	CartListService cartListService;
	@Autowired
	CartDeleteService cartDeleteService;	
	
	@RequestMapping("comDetail")
	public String comDetail(@RequestParam(value = "comId") String comId, Model model, HttpSession session) {
		companyDetailService.comDetail(comId, model);
		cartListService.cartList(model, session);
		return "foods/comDetail";
	}
	
	@RequestMapping("onClick")
	public String onClick(@RequestParam(value = "page") String page, @RequestParam(value = "comId") String comId, Model model) {
		menuTitleService.menuTitle(comId, model);		
		companyDetailService.comDetail(comId, model);		
		return "foods/com" + page ;
	}
	
	@RequestMapping("menuList")
	public String menuList(@RequestParam(value = "title") String titleNum, @RequestParam(value = "comId") String comId, Model model) {
		menuListService.menuList(titleNum, comId, model);
		return "foods/menu";
	}
	
	@RequestMapping("menuDetail")
	public String menuDetail(@RequestParam(value = "menuId") String menuId, Model model) {
		menuDetailService.menuDetail(menuId, model);
		return "foods/menuDetail";
	}
	
	@RequestMapping("addCart")
	public String addCart(MenuCommand menuCommand, HttpSession session) {
		addCartService.addCart(menuCommand, session);		
		return "redirect:/";
	}
	
	@RequestMapping("cartOneDel")
	public String cartOneDel(@RequestParam(value = "comId") String comId, @RequestParam(value = "menuId") String menuId, HttpSession session) {
		cartDeleteService.cartOneDel(menuId, session);
		return "redirect:comDetail?comId=" + comId;
	}
	
	@RequestMapping("cartAllDel")
	public String cartAllDel(@RequestParam(value = "comId") String comId, HttpSession session) {
		cartDeleteService.cartAllDel(session);
		return "redirect:comDetail?comId=" + comId;
	}
}
