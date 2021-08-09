package controller.myShop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("myShop")
public class LiveOrderController {
	
	@RequestMapping("liveOrder")
	public String liveOrderPage() {
		return "order/liveOrder";
	}
	
}
