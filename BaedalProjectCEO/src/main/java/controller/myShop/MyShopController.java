package controller.myShop;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("myShop")
public class MyShopController {
	
	@RequestMapping("main")
	public String myShopMain() {
		return "myShop/mainMyShop";
	}
	
	@RequestMapping("liveOrder")
	public String liveOrderPage() {
		return "myShop/liveOrder";
	}
	
	@RequestMapping("myShopInfo")
	public String myShopInfo() {
		return "myShop/shopInfo";
	}
	
	@RequestMapping("reviewList")
	public String reViewList() {
		return "myShop/reviewList";
	}
	
	@RequestMapping("shopOrderList")
	public String shopOrderList() {
		
		return "myShop/shopOrderList";
	}
	
	@RequestMapping("menuList")
	public String menuList() {
		return "menu/menuList";
	}
	
	@RequestMapping("shopInfo")
	public String comId(@RequestParam(value="comId")String comId,Model model) {
		
		return null;
	}
}
