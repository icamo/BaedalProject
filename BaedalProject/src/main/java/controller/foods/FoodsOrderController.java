package controller.foods;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("order")
public class FoodsOrderController {
	
	@RequestMapping("foodsOrder")
	public String payment() {
		return "foods/payment";
	}
	
	@RequestMapping("foodsOrderList")
	public String doPayment() {
		return "foods/foodsCart";
	}
}
