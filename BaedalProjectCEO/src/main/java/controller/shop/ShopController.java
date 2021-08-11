package controller.shop;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.CompanyCommand;

@Controller
@RequestMapping("shop")
public class ShopController {

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
	public String shopJoin(CompanyCommand companyCommand, Errors errors, Model model) {
		return "redirect:shop/myShopList";
	}
}
