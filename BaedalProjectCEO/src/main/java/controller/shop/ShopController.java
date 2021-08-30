package controller.shop;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.CompanyCommand;
import service.shop.MyShopListService;
import service.shop.ShopDeleteService;
import service.shop.ShopInfoService;
import service.shop.ShopJoinService;
import service.shop.ShopListService;
import validator.ShopCommandValidator;

@Controller
@RequestMapping("shop")
public class ShopController {
	@Autowired
	ShopJoinService shopJoinService;
	@Autowired
	ShopListService shopListService;
	@Autowired
	ShopInfoService shopInfoService;
	@Autowired
	MyShopListService myShopListService;
	@Autowired
	ShopDeleteService shopDeleteService;
	
	@RequestMapping("shopDel")
	public String shopDel(@RequestParam(value="comId") String comId) {
		shopDeleteService.shopDel(comId);
		return "redirect:resistShopState";
	}
	
	@RequestMapping("resistShopState")
	public String resistShopStatePage(Model model, HttpSession session) {
		shopListService.shopList(model, session);
		return "shop/resistShopList";
	}
	
	@RequestMapping("myShopList")
	public String myShopListPage(HttpSession session, Model model) {
		myShopListService.myShopList(session, model);
		return "shop/myShopList";
	}
	
	@RequestMapping("shopResist")
	public String shopResist(@ModelAttribute(value="companyCommand") CompanyCommand companyCommand) {
		return "shop/shopResist";
	}
	
	@RequestMapping("shopInfo")
	public String shopInfo(@ModelAttribute(value="companyCommand") CompanyCommand companyCommand,
			HttpSession session,Model model) {
		shopInfoService.shopInfo(companyCommand, model);
		return "shop/shopInfo";
	}
	
	@RequestMapping(value="shopJoin", method = RequestMethod.POST)
	public String shopJoin(CompanyCommand companyCommand, Errors errors, HttpSession session) {
		new ShopCommandValidator().validate(companyCommand, errors);
		if(errors.hasErrors()) {
			return "shop/shopResist";
		}
		shopJoinService.shopJoin(companyCommand, session, errors);
		 return "redirect:resistShopState";
	}
}
