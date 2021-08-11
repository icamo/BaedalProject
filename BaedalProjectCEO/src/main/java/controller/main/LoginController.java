package controller.main;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.LoginCommand;
import service.main.LoginService;
import validator.LoginCommandValidator;

@Controller
@RequestMapping("ceologin")
public class LoginController {
	@Autowired
	LoginService loginService;
	
	@RequestMapping(method = RequestMethod.POST)
	public String loginPage(LoginCommand loginCommand, Errors errors, HttpSession session) {
		new LoginCommandValidator().validate(loginCommand, errors);
		
		if(errors.hasErrors()) {
			return "main/loginPage";
		}
		
		loginService.login1(loginCommand, errors, session);
		
		if (session.getAttribute("authInfo") == null) {
			return "main/loginPage";
		}
		
		return "redirect:main";
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String main() {
		return "redirect:/";
	}
	
	@RequestMapping("logOut")
	public String loginOut(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
}
