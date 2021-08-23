package controller.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import command.CeoNoticeCommand;
import service.main.CustomerService;

@Controller
public class CustomerController {
	@Autowired
	CustomerService customerService;
	
	@RequestMapping("customerCenter")
	public String customerCenterPage(Model model) {
		customerService.CusCenter(model);
		return "customerCenter/customerCenterPage";
	}
	
	@RequestMapping("centerInfo")
	public String centerInfo(CeoNoticeCommand ceoNoticeCommand, Model model) {
		customerService.CusInfo(ceoNoticeCommand, model);
		return "customerCenter/centerInfo";
	}
}
