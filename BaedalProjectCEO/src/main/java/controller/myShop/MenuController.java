package controller.myShop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("myShop/menu")
public class MenuController {

	@RequestMapping("menuList")
	public String menuList() {
		
		return "menu/menuList";
	}
}
