package controller.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyInfoController {

	@RequestMapping("myInfo")
	public String myInfoPage() {
		
		return "myInfo/myInfoPage";
	}
}
