package controller.goods;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("cart")
public class GoodsCartController {
	
	@RequestMapping("goodsOrder")
	public String payment() {
		return "goods/payment";
	}
	
	@RequestMapping("goodsCartList")
	public String doPayment() {
		return "goods/goodsCart";
	}
	
}
