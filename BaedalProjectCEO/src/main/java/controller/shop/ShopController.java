package controller.shop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("shop")
public class ShopController {

	@RequestMapping("resistShopState")
	public String resistShopStatePage() {
		
		return "shop/resistShopList";
	}
	
	@RequestMapping("myShopList")
	public String myShopListPage() {
		
		return "shop/myShopList";
	}
	
	@RequestMapping("shopResist")
	public String shopResist() {
		
		return "shop/shopResist";
	}
}
