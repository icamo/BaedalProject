package controller.coupon;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("coupon")
public class CouponController {
	
	@RequestMapping("couponList")
	public String couponList() {
		
		return "coupon/couponList";
	}
	@RequestMapping("couponForm")
	public String couponForm() {
		
		return "coupon/couponForm";
	}
}
