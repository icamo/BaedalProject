package controller.fnq;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("fnqMem")
public class MemFnqController {

	@RequestMapping("memFnqList")
	public String memFnqList() {
		
		return "fnq/memFnqList";
	}
	
	@RequestMapping("memFnqForm")
	public String memFnqForm() {
		
		return "fnq/memFnqForm";
	}
}
