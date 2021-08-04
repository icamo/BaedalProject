package controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
public class AdminController {
	
	@RequestMapping("regist")
	public String regist() {
		return "admin/adminRegist";
	}
	
	@RequestMapping("login")
	public String login( ) {
		
		return "admin/adminLogin";
	}
}
