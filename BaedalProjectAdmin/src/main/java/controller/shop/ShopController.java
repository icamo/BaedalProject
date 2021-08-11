package controller.shop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@RequestMapping("shopDetail")
	public String shopDetail(@RequestParam(value="comId")String comId, Model model) {
		shopListService.shopDetail(comId, model);
		return "shop/shopDetail";
	}
	
	@RequestMapping("shopAppr")
	public String shopAppr(@RequestParam(value="comId")String comId) {
		shopListService.shopAppr(comId);
		return "redirect:shopDetail?comId="+comId;
	}
}
