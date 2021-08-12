package controller.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import command.MemberCommand;
import service.main.MemberFindIdService;
import service.main.MemberFindPwService;

@Controller
public class MainController {
	@Autowired
	MemberFindIdService memberFindIdService;
	@Autowired
	MemberFindPwService memberFindPwService;
	
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
}
