package controller.foods;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.foods.CompanyDetailService;

@Controller
@RequestMapping("foods")
public class FoodsController {
	@Autowired
	CompanyDetailService companyDetailService;
	
	@RequestMapping("comDetail")
	public String comDetail(@RequestParam(value = "comId") String comId, Model model) {
		companyDetailService.comDetail(comId, model);
		return "foods/comDetail";
	}
	
	@RequestMapping("onClick")
	public String onClick(@RequestParam(value = "page") String page) {
				
		
		return "foods/com" + page ;
	}
}
