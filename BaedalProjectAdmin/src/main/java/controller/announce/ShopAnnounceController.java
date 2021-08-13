package controller.announce;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.NoticeCommand;
import service.announce.ShopNoticeService;

@Controller
@RequestMapping("announceShop")
public class ShopAnnounceController {

	@Autowired
	ShopNoticeService shopNoticeService;
	
	@RequestMapping("shopAnnounce")
	public String shopAnnounceList(Model model) {
		shopNoticeService.getList(model);
		return "announce/shopAnnounceList";
	}
	
	@RequestMapping("announceShopForm")
	public String announceShopForm() {
		
		return "announce/shopAnnounceForm";
	}
	
	@RequestMapping("shopNoticeResist")
	public String shopNoticeResist(NoticeCommand noticeCommand, HttpSession session) {
		shopNoticeService.noticeResist(noticeCommand, session);
		return "redirect:shopAnnounce";
	}
	
	@RequestMapping("shopNoticeDetail")
	public String shopNoticeDetail(@RequestParam(value="noticeNum")String noticeNum, Model model) {
		shopNoticeService.noticeDetail(noticeNum, model);
		return "announce/shopNoticeDetail";
	}
	
	@RequestMapping("shopNoticeDel")
	public String shopNoticeDel(@RequestParam(value="noticeNum")String noticeNum, HttpSession session) {
		shopNoticeService.noticeDel(noticeNum, session);
		return "redirect:shopAnnounce";
	}
}
