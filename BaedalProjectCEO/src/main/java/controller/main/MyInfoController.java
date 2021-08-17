package controller.main;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.MemberCommand;
import service.member.CeoModifyService;
import service.member.MemberOutService;
import service.member.MemberPwConfirmService;
import service.member.MemberPwUpdateService;
import service.member.MyInfoService;
import validator.MemberPasswordValidator;

@Controller
@RequestMapping("myInfo")
public class MyInfoController {
	@Autowired
	MyInfoService myInfoService;
	@Autowired
	CeoModifyService ceoModifyService;
	@Autowired
	MemberOutService memberOutService;
	@Autowired
	MemberPwConfirmService memberPwConfirmService;
	@Autowired
	MemberPwUpdateService memberPwUpdateService;
	
	@RequestMapping("myInfoPage")
	public String myInfoPage(HttpSession session,Model model) {
		myInfoService.myInfo(session, model);
		return "myInfo/myInfoPage";
	}
	
	@RequestMapping("ceoUpdate")
	public String ceoEmailUpdate(HttpSession session,Model model) {
		myInfoService.myInfo(session, model);
		return "myInfo/ceoUpdate";
	}
	@RequestMapping(value="ceoUpdateOk" , method = RequestMethod.POST)
	public String ceoEmailUpdateOk(MemberCommand memberCommand,HttpSession session) {
		ceoModifyService.ceoModify(memberCommand, session);
		return "redirect:myInfoPage";
	}
	@RequestMapping("memOut")
	public String memOut() {
		return "myInfo/outPw";
	}
	@RequestMapping("memOutOk")
	public String memOutOk(@RequestParam(value="ceoPw")String ceoPw,HttpSession session, Model model) {
		String path = memberOutService.memDelete(ceoPw, session, model);
		return "redirect:/ceologin/logOut";
	}
	@RequestMapping("memPwChang")
	public String memPwChang() {
		return "myInfo/pwChang";
	}
	@RequestMapping("pwChangeOk")
	public String pwChangeOk(@RequestParam(value="ceoPw")String ceoPw,HttpSession session,Model model,
													@ModelAttribute MemberCommand memberCommand) {
		String path = memberPwConfirmService.ceoPw(ceoPw, session, model);
		return path;
	}
	@RequestMapping("changePw")
	public String changePw(MemberCommand memberCommand, Errors errors, HttpSession session) {
		new MemberPasswordValidator().validate(memberCommand, errors);
		if(errors.hasErrors()) {
			return "myInfo/pwChangeOk";
		}
		memberPwUpdateService.memPwUpdate(memberCommand, errors, session);
		if(errors.hasErrors()) {
			return  "myInfo/pwChangeOk";
		}
		return "redirect:/";
	}
}
