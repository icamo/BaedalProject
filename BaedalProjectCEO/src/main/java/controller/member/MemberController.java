package controller.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.MemberCommand;
import service.member.MemberJoinService;
import validator.MemberCommandValidator;

@Controller
@RequestMapping("register")
public class MemberController {
	@Autowired
	MemberJoinService memberJoinService;
	
	@RequestMapping("memRegist")
	public String memRegist(@ModelAttribute(value="memberCommand") MemberCommand memberCommand) {
		return "member/memberForm";
	}
	
	@RequestMapping(value="memJoin", method = RequestMethod.POST)
	public String memJoin(MemberCommand memberCommand, Errors errors) {
		new MemberCommandValidator().validate(memberCommand, errors);
		
		if(errors.hasErrors()) {
			return "member/memberForm";
		}
		
		memberJoinService.memJoin(memberCommand);
		
		return "redirect:/login";
	}
}
