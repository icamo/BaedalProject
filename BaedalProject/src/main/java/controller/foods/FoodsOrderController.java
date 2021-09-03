package controller.foods;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import model.OrderDTO;
import model.ReviewDTO;
import service.basket.CartDeleteService;
import service.basket.CartListService;
import service.basket.OrderService;
import service.basket.PaymentService;
import service.foods.CompanyDetailService;
import service.foods.ReviewService;
import service.member.MemberMyPageDetailService;
import service.member.OrderListService;

@Controller
@RequestMapping("order")
public class FoodsOrderController {
	@Autowired
	CartListService cartListService;
	@Autowired
	CompanyDetailService companyDetailService;
	@Autowired
	MemberMyPageDetailService memberMyPageDetailService;
	@Autowired
	PaymentService paymentService;
	@Autowired
	OrderService orderService;
	@Autowired
	CartDeleteService cartDeleteService;
	@Autowired
	OrderListService orderListService;
	@Autowired
	ReviewService reviewservice;
	
	@RequestMapping("foodsOrder")
	public String payment(@RequestParam(value = "comId") String comId, Model model, HttpSession session) {
		memberMyPageDetailService.memDetail(session, model);
		companyDetailService.comDetail(comId, model, session);
		cartListService.cartList(model, session);
		paymentService.orderNum(model);
		paymentService.addrList(model, session);
		return "foods/payment";
	}
	
	@RequestMapping("foodsOrderList")
	public String orderList(String orderNum,Model model, HttpSession session) {
			orderListService.orderList(model, session);
		return "foods/foodsCart";
	}
	
	@RequestMapping("orderInsert")
	public String orderInsert(OrderDTO orderDTO,HttpSession session) {
		paymentService.payInsert(orderDTO);
		cartDeleteService.cartAllDel(session);
		return "foods/comDetail";
	}
	
	@RequestMapping("paymentCk")
	public String paymentCk(@RequestParam(value = "orderNum")String orderNum,HttpSession session,Model model) {
		orderService.orderCk(orderNum,session, model);
		return "foods/paymentCk";
	}
	
	@RequestMapping("Review")
	public String Review(@RequestParam(value = "orderNum")String orderNum,HttpSession session,Model model) {
		orderService.orderCk(orderNum,session, model);
		return "foods/Review";
	}
	@RequestMapping("addReview")
	public String addReview(ReviewDTO reviewDTO){
		reviewservice.addReview(reviewDTO);
		return "foods/foodsCart";
	}
	
	
	
	
}
