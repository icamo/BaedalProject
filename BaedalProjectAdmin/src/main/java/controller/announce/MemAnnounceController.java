package controller.announce;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.NoticeCommand;
import service.announce.MemNoticeService;

@Controller
@RequestMapping("announceMem")
public class MemAnnounceController {
	
	@Autowired
	MemNoticeService memNoticeService;
	
	@RequestMapping("memAnnounce")
	public String memAnnounceList(Model model) {
		memNoticeService.getList(model);
		return "announce/memAnnounceList";
	}
	
	@RequestMapping("announceMemForm")
	public String announceShopForm() {
		
		return "announce/memAnnounceForm";
	}
	
	@RequestMapping("memNoticeResist")
	public String memNoticeResist(NoticeCommand noticeCommand, HttpSession session) {
		memNoticeService.noticeResist(noticeCommand, session);
		return "redirect:memAnnounce";
	}
	
	@RequestMapping("memNoticeDetail")
	public String memNoticeDetail(@RequestParam(value="noticeNum")String noticeNum, Model model) {
		memNoticeService.noticeDetail(noticeNum, model);
		return "announce/memNoticeDetail";
	}
	
	@RequestMapping("memNoticeDel")
	public String memNoticeDel(@RequestParam(value="noticeNum")String noticeNum, HttpSession session) {
		memNoticeService.noticeDel(noticeNum,session);
		return "redirect:memAnnounce";
	}
}
