package controller.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.MemberCommand;
import service.member.DuplicateCheckService;
import service.member.MemberJoinService;
import validator.MemberCommandValidator;

@Controller
@RequestMapping("register")
public class MemberController {
	@Autowired
	MemberJoinService memberJoinService;
	@Autowired
	DuplicateCheckService duplicateCheckService;
	
	
	
	@RequestMapping("memRegist")
	public String memRegist(@ModelAttribute(value="memberCommand") MemberCommand memberCommand){
		return "member/memberForm";
	}	
	
	
	@RequestMapping(value = "memJoin", method = RequestMethod.POST)
	public String memJoin(MemberCommand memberCommand, Errors errors) {
		new MemberCommandValidator().validate(memberCommand, errors);
		if(errors.hasErrors()) {
			return "member/memberForm";
		}
		duplicateCheckService.dupIdChk(memberCommand, errors); // 아이디 중복체크
		duplicateCheckService.dupEmailChk(memberCommand, errors); // 이메일 중복체크
		if(errors.hasErrors()) {			
			return "member/memberForm";
		} else {
			memberJoinService.memJoin(memberCommand);
		}	
		
		return "main/main";
	}
}
