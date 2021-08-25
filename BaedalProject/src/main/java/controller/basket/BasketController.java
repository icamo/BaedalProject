package controller.basket;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.basket.BasketDelService;
import service.basket.BasketListService;


@Controller
public class BasketController {
	@Autowired
	BasketListService basketListService;
	@Autowired
	BasketDelService basketDelService;
	
	
	@RequestMapping("basket/basket")
	public String basket(String memId, HttpSession session , Model model) {
		String userId = (String)session.getAttribute("userId");
		basketListService.basketList(userId,session, model);
		return "basket/basket";
	}
	
	@RequestMapping("basket/payment")
	public String payment(String memId, HttpSession session , Model model) {
		String userId = (String)session.getAttribute("userId");
		basketListService.basketList(userId,session ,model);
		return "basket/payment";
	}
	
	@RequestMapping("basket/basketDel")
	public String basketDel(@RequestParam(value = "menuId")String menuId, HttpSession session) {
		basketDelService.basketDel(menuId, session);
		return "redirect:basket";
	}
}
