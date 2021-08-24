package controller.main;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.MemberCommand;
import service.foods.StoreListService;
import service.main.MemberFindIdService;
import service.main.MemberFindPwService;
import service.member.BasketDelService;
import service.member.BasketListService;
import service.member.MemberMyPageDetailService;

@Controller
public class MainController {
	@Autowired
	MemberFindIdService memberFindIdService;
	@Autowired
	MemberFindPwService memberFindPwService;
	@Autowired
	StoreListService storeListService;
	@Autowired
	BasketListService basketListService;
	@Autowired
	BasketDelService basketDelService;
	@Autowired
	MemberMyPageDetailService memberMyPageDetailService;
	
	
	@RequestMapping("main")
	public String main() {
		return "main/main";
	}
	
	@RequestMapping("search/findId")
	public String findId() {
		return "main/findId";
	}
	
	@RequestMapping("search/findIdSubmit")
	public String findIdSubmit(MemberCommand memberCommand, Model model) {
		memberFindIdService.findId(memberCommand, model);
		return "main/findIdResult";
		
	}
	
	@RequestMapping("search/findPw")
	public String findPw() {
		return "main/findPw";
	}
	
	@RequestMapping("search/findPwSubmit")
	public String findPwSubmit(MemberCommand memberCommand, Model model) {
		memberFindPwService.findPw(memberCommand, model);
		return "main/findPwResult";
	}
	
	@RequestMapping("main/category")
	public String category(@RequestParam(value = "category") String category, Model model) {
		storeListService.storeList(category, model);
		return "main/category";
	}
	
	@RequestMapping("main/basket")
	public String basket(String memId, HttpSession session , Model model) {
		String userId = (String)session.getAttribute("userId");
		basketListService.basketList(userId,session, model);
		return "main/basket";
	}
	
	@RequestMapping("main/payment")
	public String payment(String memId, HttpSession session , Model model) {
		String userId = (String)session.getAttribute("userId");
		basketListService.basketList(userId,session, model);
		//memberMyPageDetailService.memDetail(session, model);
		return "main/payment";
	}
	
	@RequestMapping("main/basketDel")
	public String basketDel(@RequestParam(value = "basketNum")String basketNum, HttpSession session) {
		basketDelService.basketDel(basketNum, session);
		return "redirect:basket";
	}
}
