package controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("edit")
public class MemberMyPageController {
	@RequestMapping("myPageMain")
	public String myPageMain() {
		return "member/memMyPage";
	}
	
	@RequestMapping("memDetail")
	public String memDetail() {
		return "member/memDetail";
	}
	
	@RequestMapping("foodsReview")
	public String Review() {
		return "foods/foodReview";
	}
	
	@RequestMapping("wishStore")
	public String wishStore() {
		return "wish/wishStore";
	}
}
