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
	
	@RequestMapping("myAddr")
	public String myAddr() {
		return "member/myAddr";
	}
	
	@RequestMapping("memDetail")
	public String memDetail() {
		return "member/memDetail";
	}
	
	@RequestMapping("myReview")
	public String myReview() {
		return "foods/foodReview";
	}
	
	@RequestMapping("myReviewDetail")
	public String myReviewDetail() {
		return "foods/foodReviewDetail";
	}
	
	@RequestMapping("wishStore")
	public String wishStore() {
		return "wish/wishStore";
	}
}
