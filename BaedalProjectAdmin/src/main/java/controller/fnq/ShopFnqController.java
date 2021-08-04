package controller.fnq;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("fnqShop")
public class ShopFnqController {

	@RequestMapping("shopFnqList")
	public String shopFnqList() {
		
		return "fnq/shopFnqList";
	}
}
