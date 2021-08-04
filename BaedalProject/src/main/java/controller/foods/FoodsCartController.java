package controller.foods;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("cart")
public class FoodsCartController {
	
	@RequestMapping("foodsOrder")
	public String payment() {
		return "foods/payment";
	}
	
	@RequestMapping("foodsCartList")
	public String doPayment() {
		return "foods/foodsCart";
	}
}
