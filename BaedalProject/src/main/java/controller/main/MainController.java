package controller.main;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.MemberCommand;
import service.foods.StoreListService;
import service.main.MemberFindIdService;
import service.main.MemberFindPwService;
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
}
