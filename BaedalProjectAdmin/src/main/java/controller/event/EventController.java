package controller.event;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("event")
public class EventController {
	
	@RequestMapping("eventList")
	public String eventList() {
		
		return "event/eventList";
	}
	
	@RequestMapping("eventForm")
	public String eventForm() {
		
		return "event/eventForm";
	}
}
