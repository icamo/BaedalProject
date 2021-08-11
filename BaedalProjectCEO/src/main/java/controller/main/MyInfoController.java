package controller.main;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.MemberCommand;
import service.member.MyInfoService;

@Controller
@RequestMapping("myInfo")
public class MyInfoController {
	@Autowired
	MyInfoService myInfoService;
	
	@RequestMapping("myInfoPage")
	public String myInfoPage(HttpSession session,Model model) {
		myInfoService.myInfo(session, model);
		return "myInfo/myInfoPage";
	}
	@RequestMapping("memPwChang")
	public String memChang() {
		return "myInfo/pwConfirm";
	}
	@RequestMapping(value="pwConfirmOk" , method = RequestMethod.POST)
	public String pwConfirmOk() {
		return null;
	}
	@RequestMapping("ceoEmailUpdate")
	public String ceoEmailUpdate(HttpSession session,Model model) {
		myInfoService.myInfo(session, model);
		return "myInfo/ceoEmailUpdate";
	}
	@RequestMapping(value="ceoEmailUpdateOk" , method = RequestMethod.POST)
	public String ceoEmailUpdateOk(MemberCommand memberCommand,HttpSession session) {
		
		return "redirect:myInfoPage";
	}
}
