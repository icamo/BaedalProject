package controller.myShop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("myShop")
public class ReviewController {

	@RequestMapping("reviewList")
	public String reViewList() {
		
		return "review/reviewList";
	}
}
