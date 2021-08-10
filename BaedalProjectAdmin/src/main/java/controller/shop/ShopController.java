package controller.shop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.shop.ShopListService;

@Controller
@RequestMapping("shop")
public class ShopController {
	
	@Autowired
	ShopListService shopListService;
	
	@RequestMapping("shopList")
	public String shopList(Model model) {
		shopListService.shopList(model);
		return "shop/shopList";
	}
}
