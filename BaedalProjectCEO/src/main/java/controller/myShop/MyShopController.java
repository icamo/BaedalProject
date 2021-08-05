package controller.myShop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("myShop")
public class MyShopController {
	
	@RequestMapping("main")
	public String myShopMain() {
		
		return "mainMyShop/mainMyShop";
	}
	
	
}
