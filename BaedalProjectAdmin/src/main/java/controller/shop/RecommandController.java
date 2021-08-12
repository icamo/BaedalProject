package controller.shop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.shop.ShopRecommandService;

@Controller
@RequestMapping("recommand")
public class RecommandController {

	@Autowired
	ShopRecommandService shopRecommandService;
	
	@RequestMapping("recommandList")
	public String recommandList(Model model) {
		shopRecommandService.recommandShopList(model);
		return "shop/recommandList";
	}
	
	@RequestMapping("recommandDetail")
	public String recommandDetail(@RequestParam(value="recNum")String recNum, @RequestParam(value="comId")String comId, Model model) {
		shopRecommandService.recommandDetail(recNum, comId, model);
		return "shop/recommandDetail";
	}
	
}
