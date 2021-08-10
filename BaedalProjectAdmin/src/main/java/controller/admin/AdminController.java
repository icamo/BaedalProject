package controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Model.AuthInfoDTO;
import command.AdminCommand;
import command.loginCommand;
import service.admin.AdminJoinService;
import service.main.AdminLoginService;
import validator.AdminCommandValidator;

@Controller
@RequestMapping("admin")
public class AdminController {
	
	@Autowired
	AdminJoinService adminJoinService;
	@Autowired
	AdminLoginService adminLoginService;
	
	
	@RequestMapping("regist")
	public String regist(AdminCommand adminCommand) {
		return "admin/adminRegist";
	}
	
	@RequestMapping(value="adminJoin", method = RequestMethod.POST)
	public String adminJoin(AdminCommand adminCommand, Errors errors) {
		new AdminCommandValidator().validate(adminCommand, errors);
		if(errors.hasErrors()) {
			return "admin/adminRegist";
		}
		AuthInfoDTO authInfo = adminLoginService.idConfirm(adminCommand.getAdminId());
		if(authInfo!=null) {
			errors.rejectValue("adminId", "duplicate");
			return "admin/adminRegist";
		}
		authInfo=adminLoginService.numConfirm(adminCommand.getAdminNum());
		if(authInfo!=null) {
			errors.rejectValue("adminNum", "duplicate2");
			return "admin/adminRegist";
		}
		adminJoinService.adminInsert(adminCommand);
		return "redirect:/";
	}
	
	@RequestMapping("login")
	public String login(loginCommand loginCommand) {
		
		return "admin/adminLogin";
	}
	
	
}
