package controller.shop;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.CompanyCommand;
import service.shop.MyShopListService;
import service.shop.ShopJoinService;
import validator.CompanyCommandValidator;

@Controller
@RequestMapping("shop")
public class ShopController {
	@Autowired
	ShopJoinService shopJoinService;
	@Autowired
	MyShopListService myShopListService;
	
	
	@RequestMapping("resistShopState")
	public String resistShopStatePage(Model model) {
		myShopListService.myShopList(model);
		return "shop/resistShopList";
	}
	
	@RequestMapping("myShopList")
	public String myShopListPage(Model model) {
		myShopListService.myShopList(model);
		return "shop/myShopList";
	}
	
	@RequestMapping("shopResist")
	public String shopResist(@ModelAttribute(value="companyCommand") CompanyCommand companyCommand) {
		return "shop/shopResist";
	}
	
	@RequestMapping(value="shopJoin", method = RequestMethod.POST)
	public String shopJoin(CompanyCommand companyCommand, Errors errors,HttpSession session) {
		shopJoinService.shopJoin(companyCommand, session, errors);
		new CompanyCommandValidator().validate(companyCommand, errors);
		if(errors.hasErrors()) {
			return "shop/shopResist";
		}
		return "redirect:myShopList";
	}
}
