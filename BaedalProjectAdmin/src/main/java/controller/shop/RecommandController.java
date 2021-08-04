package controller.shop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("recommand")
public class RecommandController {

	@RequestMapping("recommandList")
	public String recommandList() {
		
		return "shop/recommandList";
	}
}
