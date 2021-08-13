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
import service.shop.ShopJoinService;
import validator.CompanyCommandValidator;

@Controller
@RequestMapping("shop")
public class ShopController {
	@Autowired
	ShopJoinService shopJoinService;
	
	
	@RequestMapping("resistShopState")
	public String resistShopStatePage(Model model) {
		
		return "shop/resistShopList";
	}
	
	@RequestMapping("myShopList")
	public String myShopListPage() {
		
		return "shop/myShopList";
	}
	
	@RequestMapping("shopResist")
	public String shopResist(@ModelAttribute(value="companyCommand") CompanyCommand companyCommand) {
		return "shop/shopResist";
	}
	
	@RequestMapping(value="shopJoin", method = RequestMethod.POST)
	public String shopJoin(CompanyCommand companyCommand, Errors errors,HttpSession session) {
		shopJoinService.shopInsert(companyCommand, session, errors);
		new CompanyCommandValidator().validate(companyCommand, errors);
		if(errors.hasErrors()) {
			return "shop/shopResist";
		}
		return "redirect:shop/myShopList";
	}
}
