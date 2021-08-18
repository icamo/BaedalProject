package controller.myShop;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.CompanyCommand;
import service.myShop.MyShopInfoService;
import service.myShop.MyShopSetService;

@Controller
@RequestMapping("myShop")
public class MyShopController {
	
	@Autowired
	MyShopSetService myShopSetService;
	@Autowired
	MyShopInfoService myShopInfoService;
	
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
	public String myShopInfo(CompanyCommand companyCommand,Model model) {
		myShopInfoService.myShopInfo(companyCommand, model);
		return "myShop/shopInfo";
	}
	
	@RequestMapping("myShopInfoChange")
	public String myShopInfoChange(CompanyCommand companyCommand,Model model) {
		myShopInfoService.myShopInfo(companyCommand, model);
		return "myShop/myShopInfoChage";
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
