package controller.announce;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import Model.NoticeDTO;
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
		return "announce/memAnnounceList";
	}
}
