package controller.basket;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.MenuCommand;
import model.OrderDTO;
import service.basket.AddCartService;
import service.basket.CartCheckService;
import service.basket.CartDeleteService;
import service.basket.CartListService;
import service.basket.PaymentService;
import service.foods.CompanyDetailService;
import service.member.MemberMyPageDetailService;


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
	@Autowired
	MemberMyPageDetailService memberMyPageDetailService;
	@Autowired
	PaymentService paymentService;
	@Autowired
	CompanyDetailService companyDetailService;
	
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
	@RequestMapping("foodsOrder")
	public String payment(@RequestParam(value = "comId") String comId,MenuCommand menuCommand,Model model, HttpSession session) {
		addCartService.addCart(menuCommand, session);
		return "foods/payment";
	}
}
