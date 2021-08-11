package controller.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import command.MemberCommand;
import model.AuthInfoDTO;
import service.member.MemberMyPageDetailService;
import service.member.MemberMyPageUpdateService;

@Controller
@RequestMapping("edit")
public class MemberMyPageController {
	@Autowired
	MemberMyPageDetailService memberMyPageDetailService;
	@Autowired
	MemberMyPageUpdateService memberMyPageUpdateService;
	
	@RequestMapping("myPageMain")
	public String myPageMain() {
		return "member/memMyPage";
	}
	
	@RequestMapping("myAddr")
	public String myAddr() {
		return "member/myAddr";
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
