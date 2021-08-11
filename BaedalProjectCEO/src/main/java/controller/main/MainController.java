package controller.main;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import command.LoginCommand;

@Controller
public class MainController {
	@RequestMapping("login")
	public String loginPage(@ModelAttribute(value="loginCommand") LoginCommand loginCommand) {
		return "main/loginPage";
	}
	
	@RequestMapping("main")
	public String main() {
		return "main/main";
	}
}
