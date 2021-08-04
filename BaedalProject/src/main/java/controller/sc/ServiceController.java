package controller.sc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("service")
public class ServiceController {
	@RequestMapping("ServiceCenterMain")
	public String scMain(){
		return "service/memScMain";
	}
}
