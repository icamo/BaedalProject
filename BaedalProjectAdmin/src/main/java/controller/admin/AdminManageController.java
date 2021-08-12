package controller.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.AdminCommand;
import service.admin.AdminsManageService;
import validator.AdminPwChangeValidator;

@Controller
@RequestMapping("admins")
public class AdminManageController {
	
	@Autowired
	AdminsManageService adminsManageService;
	
	@RequestMapping("adminsList")
	public String adminsList(Model model) {
		adminsManageService.getAdminsList(model);
		return "admin/adminsList";
	}
	
	@RequestMapping("adminDetail")
	public String adminDetail(@RequestParam(value="adminNum")String adminNum, Model model) {
		adminsManageService.getAdminDetail(adminNum, model);
		return "admin/adminDetail";
	}
	
	@RequestMapping("adminDel")
	public String adminDel(@RequestParam(value="adminNum")String adminNum) {
		adminsManageService.delAdmin(adminNum);
		return "redirect:adminsList";
	}
	
	@RequestMapping("myInfo")
	public String myInfo(HttpSession session, Model model) {
		adminsManageService.getAdminDetail(session, model);
		return "admin/myInfo";
	}
	
	@RequestMapping("modifyInfo")
	public String modifyInfo(HttpSession session, Model model) {
		adminsManageService.getAdminDetail(session, model);
		return "admin/modifyInfo";
	}
	
	@RequestMapping("modifyInfoCon")
	public String modifyInfoCon(AdminCommand adminCommand, HttpSession session) {
		adminsManageService.modifyInfoCon(adminCommand, session);
		return "redirect:myInfo";
	}
	
	@RequestMapping("modifyPw")
	public String modifyPw(AdminCommand adminCommand) {
		return "admin/modifyPw";
	}
	
	@RequestMapping("modifyPwCon")
	public String modifyPwCon(HttpSession session, AdminCommand adminCommand, Errors errors) {
		new AdminPwChangeValidator().validate(adminCommand, errors);
		if(errors.hasErrors()) {
			return "admin/modifyPw";
		}
		String path = adminsManageService.pwChange(adminCommand, session, errors);
		return path;
	}
	
	@RequestMapping("adminLeave")
	public String adminLeave() {
		return "admin/adminLeave";
	}
	
	@RequestMapping("adminLeaveCon")
	public String adminLeaveCon(AdminCommand adminCommand, HttpSession session, HttpServletRequest request) {
		String path = adminsManageService.adminLeave(adminCommand, session, request);
		
		return path;
	}
}
