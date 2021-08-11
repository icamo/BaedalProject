package controller.fnq;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import command.NoticeCommand;
import service.fnq.ShopFnqService;

@Controller
@RequestMapping("fnqShop")
public class ShopFnqController {
	
	@Autowired
	ShopFnqService shopFnqService;

	@RequestMapping("shopFnqList")
	public String shopFnqList(Model model) {
		shopFnqService.getList(model);
		return "fnq/shopFnqList";
	}
	
	@RequestMapping("shopFnqForm")
	public String shopFnqForm() {
		
		return "fnq/shopFnqForm";
	}
	
	@RequestMapping("ceoFnqResist")
	public String ceoFnqResist(NoticeCommand noticeCommand) {
		shopFnqService.fnqResist(noticeCommand);
		return "fnq/shopFnqList";
	}
}
