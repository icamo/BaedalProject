package controller.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	@RequestMapping("login")
	public String loginPage() {
		return "main/loginPage";
	}
	
	@RequestMapping("main")
	public String main() {
		
		return "main/main";
	}
}
