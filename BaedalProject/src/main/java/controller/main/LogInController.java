package controller.main;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import command.LogInCommand;
import service.main.LogInService;
import validator.LogInCommandValidator;

@Controller
public class LogInController {
	@Autowired
	LogInService logInService;
	
	@RequestMapping("logIn")	
	public String loginPage(@ModelAttribute("logInCommand") LogInCommand logInCommand) {
		return "main/login";
	}

	@RequestMapping("logIn1")
	public String login(LogInCommand logInCommand, Errors errors, HttpSession session) {
		
		new LogInCommandValidator().validate(logInCommand, errors);
		if(errors.hasErrors()) {
			return "main/login";
		}
		logInService.logIn(logInCommand, errors, session);
		if(errors.hasErrors()) {
			return "main/login";
		}
		session.setAttribute("userId", logInCommand.getUserId());
		
		return "redirect:/";
	}
	
	@RequestMapping("logOut")
	public String logOut(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	
	
}
