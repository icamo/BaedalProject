package controller.fnq;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
		return "redirect:shopFnqList";
	}
	
	@RequestMapping("shopFnqDetail")
	public String shopFnqDetail(@RequestParam(value="noticeNum")String noticeNum, Model model) {
		shopFnqService.fnqDetail(noticeNum, model);
		return "fnq/shopFnqDetail";
	}
	
	@RequestMapping("shopFnqDel")
	public String shopFnqDel(@RequestParam(value="noticeNum")String noticeNum){
		shopFnqService.fnqDel(noticeNum);
		return "redirect:shopFnqList";
	}
}
