package controller.announce;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("announceShop")
public class ShopAnnounceController {

	@RequestMapping("shopAnnounce")
	public String shopAnnounceList() {
		
		return "announce/shopAnnounceList";
	}
	
	@RequestMapping("announceShopForm")
	public String announceShopForm() {
		
		return "announce/shopAnnounceForm";
	}
}
