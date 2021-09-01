package controller.sc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.sc.CustomerCenterService;

@Controller
@RequestMapping("service")
public class ServiceController {
	
	@Autowired
	CustomerCenterService customerCenterService;
	
	@RequestMapping("ServiceCenterMain")
	public String scMain(Model model){
		customerCenterService.centerList(model);
		return "service/memScMain";
	}
	
	@RequestMapping("centerInfo")
	public String centerInfo(@RequestParam(value="memNoticeNum")String memNoticeNum, Model model){
		customerCenterService.centerInfo(memNoticeNum, model);
		return "service/centerInfo";
	}
}
