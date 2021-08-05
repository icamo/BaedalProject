package controller.myShop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("myShop")
public class MyShopInfoController {

	@RequestMapping("myShopInfo")
	public String myShopInfo() {
		
		return "myShopInfo/shopInfo";
	}
}
