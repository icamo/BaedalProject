package controller.announce;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("announceMem")
public class MemAnnounceController {
	
	@RequestMapping("memAnnounce")
	public String memAnnounceList() {
		
		return "announce/memAnnounceList";
	}
	
	@RequestMapping("announceMemForm")
	public String announceShopForm() {
		
		return "announce/memAnnounceForm";
	}
}
