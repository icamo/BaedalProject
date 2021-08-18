package controller.myShop;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.myShop.MyShopSetService;

@Controller
@RequestMapping("myShop")
public class MyShopController {
	
	@Autowired
	MyShopSetService myShopSetService;
	
	@RequestMapping("main")
	public String myShopMain(HttpSession session, @RequestParam(value="comId")String comId) {
		myShopSetService.shopSet(session, comId);
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
	
}
