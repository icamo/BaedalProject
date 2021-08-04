package controller.shop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("shop")
public class ShopController {
	
	
	@RequestMapping("shopList")
	public String shopList() {
		
		return "shop/shopList";
	}
}
