package controller.fnq;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.NoticeCommand;
import service.fnq.MemFnqService;

@Controller
@RequestMapping("fnqMem")
public class MemFnqController {

	@Autowired
	MemFnqService memFnqService;
	
	@RequestMapping("memFnqList")
	public String memFnqList(Model model) {
		memFnqService.getList(model);
		return "fnq/memFnqList";
	}
	
	@RequestMapping("memFnqForm")
	public String memFnqForm() {
		
		return "fnq/memFnqForm";
	}
	
	@RequestMapping("memFnqResist")
	public String memFnqResist(NoticeCommand noticeCommand, HttpSession session) {
		memFnqService.fnqResist(noticeCommand, session);
		return "redirect:memFnqList";
	}
	
	@RequestMapping("memFnqDetail")
	public String memFnqDetail(@RequestParam(value="noticeNum")String noticeNum, Model model) {
		memFnqService.fnqDetail(noticeNum, model);
		return "fnq/memFnqDetail"; 
	}
	
	@RequestMapping("memFnqDel")
	public String memFnqDel(@RequestParam(value="noticeNum")String noticeNum) {
		memFnqService.fnqDel(noticeNum);
		return "redirect:memFnqList";
	}

}
