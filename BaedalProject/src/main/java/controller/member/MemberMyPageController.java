package controller.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import command.MemberCommand;
import service.member.MemberMyPageDetailService;
import service.member.MemberMyPageUpdateService;
import service.member.MemberPwUpdateService;
import service.member.MemberQuitService;
import service.member.MyReviewService;
import service.member.OrderListService;
import service.member.ReviewDetailService;
import service.member.WishStoreListService;
import validator.MemberPasswordValidator;

@Controller
@RequestMapping("edit")
public class MemberMyPageController {
	@Autowired
	MemberMyPageDetailService memberMyPageDetailService;
	@Autowired
	MemberMyPageUpdateService memberMyPageUpdateService;
	@Autowired
	MemberPwUpdateService memberPwUpdateService;
	@Autowired
	MemberQuitService memberQuitService;	
	@Autowired
	WishStoreListService wishStoreListService;
	@Autowired
	MyReviewService myReviewService;
	@Autowired
	ReviewDetailService reviewDetailService;
	@Autowired
	OrderListService orderListService;
	
	@RequestMapping("myPageMain")
	public String myPageMain() {
		return "member/memMyPage";
	}
	
	@RequestMapping("memDetail")
	public String memDetail(HttpSession session, Model model) {
		memberMyPageDetailService.memDetail(session, model);
		return "member/memDetail";
	}
	
	@RequestMapping("memModify")
	public String memModify(HttpSession session, Model model) {
		memberMyPageDetailService.memDetail(session, model);
		return "member/memModify";
	}
	
	@RequestMapping("memModifyCfm")
	public String memModifyCfm(MemberCommand memberCommand, HttpSession session) {
		memberMyPageUpdateService.memUpdate(memberCommand, session);		
		return "redirect:memDetail";
	}
	
	@RequestMapping("memPwChange")
	public String memPwChange(@ModelAttribute(value="memberCommand") MemberCommand memberCommand) {
		return "member/memPwChange";
	}
	
	@RequestMapping("memPwChangCfm")
	public String memPwChangCfm(MemberCommand memberCommand, HttpSession session, Errors errors) {
		new MemberPasswordValidator().validate(memberCommand, errors);
		if(errors.hasErrors()) {
			return "member/memPwChange";
		}
		memberPwUpdateService.memPwUpdate(memberCommand, session, errors);
		if(errors.hasErrors()) {
			return "member/memPwChange";
		}
		return "redirect:memDetail";
	}
	
	@RequestMapping("memQuit")
	public String memQuit(HttpSession session) {
		memberQuitService.memQuit(session);
		session.invalidate();
		return "main/main";
	}
	
	@RequestMapping("myReview")
	public String myReview(Model model, HttpSession session) {
		myReviewService.ReviewList(model, session);
		return "foods/foodReview";
	}
	
	@RequestMapping("myReviewDetail")
	public String myReviewDetail(String orderNum,HttpSession session,Model model) {
		orderListService.orderMenuName(orderNum, model, session);
		reviewDetailService.reviewDetail(orderNum, session, model);
		return "foods/foodReviewDetail";
	}
	
	@RequestMapping("wishStore")
	public String wishStore(HttpSession session, Model model) {
		wishStoreListService.wishStoreList(session, model);
		return "member/wishStore";
	}
}
