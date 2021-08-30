package controller.basket;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.MenuCommand;
import service.basket.AddCartService;
import service.basket.CartCheckService;
import service.basket.CartDeleteService;
import service.basket.CartListService;


@Controller
@RequestMapping("foods")
public class BasketController {
	@Autowired
	AddCartService addCartService;
	@Autowired
	CartListService cartListService;
	@Autowired
	CartDeleteService cartDeleteService;	
	@Autowired
	CartCheckService cartCheckService;
	
	@RequestMapping("addCart")
	public String addCart(MenuCommand menuCommand, HttpSession session){
		String cartCom = cartCheckService.cartCheck(session);
		if(!(menuCommand.getComId().equals(cartCom)) && cartCom != null) {			
			cartDeleteService.cartAllDel(session);
		}
		addCartService.addCart(menuCommand, session);		
		return "foods/menuDetail";
	}
	
	@RequestMapping("cartOneDel")
	public String cartOneDel(@RequestParam(value = "menuId") String menuId, HttpSession session) {
		cartDeleteService.cartOneDel(menuId, session);
		return "foods/comDetail";
	}
	
	@RequestMapping("cartAllDel")
	public String cartAllDel(HttpSession session) {
		cartDeleteService.cartAllDel(session);
		return "foods/comDetail";
	}
	@RequestMapping("headerCart")
	public String headerCart(HttpSession session) {		
		String cartCom = cartCheckService.cartCheck(session);
		if(cartCom == null) {
			return "redirect:/";
		} else {
			return "redirect:/foods/comDetail?comId=" + cartCom ;
		}		
	}
}
