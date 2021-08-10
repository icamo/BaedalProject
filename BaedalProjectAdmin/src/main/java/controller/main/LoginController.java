package controller.main;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.loginCommand;
import service.main.AdminLoginService;
import validator.LoginCommandValidator;

@Controller
@RequestMapping("login")
public class LoginController {

	@Autowired
	AdminLoginService adminLoginService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String main() {
		return "redirect:/";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String login(loginCommand loginCommand, Errors errors, HttpSession session, HttpServletResponse response) {
		new LoginCommandValidator().validate(loginCommand, errors);//아이디, 암호 입력했는지
		if(errors.hasErrors()) {
			return "admin/adminLogin";
		}
		adminLoginService.login(loginCommand, errors, session);//아이디 중복, 암호 확인
		if(errors.hasErrors()) {
			return "admin/adminLogin";
		}
		return "redirect:/";
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
}
