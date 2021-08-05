package controller.myShop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("myShop")
public class ShopOrderController {

	
	@RequestMapping("shopOrderList")
	public String shopOrderList() {
		
		return "order/shopOrderList";
	}
}
