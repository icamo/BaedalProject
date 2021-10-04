package controller.foods;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.basket.CartListService;
import service.foods.CompanyDetailService;
import service.foods.CompanyReviewService;
import service.foods.MenuDetailService;
import service.foods.MenuListService;
import service.foods.MenuTitleService;
import service.foods.ReviewMenuNameService;
import service.foods.StoreLikeService;
import service.member.OrderListService;


@Controller
@RequestMapping("foods")
public class FoodsController {
	@Autowired
	CompanyDetailService companyDetailService;
	@Autowired
	MenuTitleService menuTitleService;
	@Autowired
	MenuListService menuListService;
	@Autowired
	MenuDetailService menuDetailService;
	@Autowired
	CartListService cartListService;
	@Autowired
	StoreLikeService storeLikeService;
	@Autowired
	CompanyReviewService companyReviewService;
	@Autowired
	OrderListService orderListService;
	@Autowired
	ReviewMenuNameService reviewMenuNameService;
	
	@RequestMapping("comDetail")
	public String comDetail(@RequestParam(value = "comId") String comId, Model model, HttpSession session) {
		companyDetailService.comDetail(comId, model, session);
		cartListService.cartList(model, session);
		return "foods/comDetail";
	}
	
	@RequestMapping("onClick")
	public String onClick(@RequestParam(value = "page") String page, @RequestParam(value = "comId") String comId, 
							String orderNum, Model model, HttpSession session) {
		menuTitleService.menuTitle(comId, model);		
		companyDetailService.comDetail(comId, model, session);
		reviewMenuNameService.reviewMenuName(comId, session, model);
		companyReviewService.comReview(comId, model);
		return "foods/com" + page ;
	}
	
	@RequestMapping("menuList")
	public String menuList(@RequestParam(value = "title") String titleNum, @RequestParam(value = "comId") String comId, Model model) {
		menuListService.menuList(titleNum, comId, model);
		return "foods/menu";
	}
	
	@RequestMapping("menuDetail")
	public String menuDetail(@RequestParam(value = "menuId") String menuId, Model model) {
		menuDetailService.menuDetail(menuId, model);
		return "foods/menuDetail";
	}
	
	@RequestMapping("storeLike")
	public String storeLike(@RequestParam(value = "comId") String comId, HttpSession session,
			Model model) {
		storeLikeService.storeLike(comId,session,model);
		return "foods/ok";
	}

}
