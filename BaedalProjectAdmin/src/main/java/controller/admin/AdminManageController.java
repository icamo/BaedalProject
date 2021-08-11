package controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.admin.AdminsManageService;

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
}
