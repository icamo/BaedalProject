package controller.event;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import command.EventCommand;
import service.event.EventService;

@Controller
@RequestMapping("event")
public class EventController {
	
	@Autowired
	EventService eventService;
	
	@RequestMapping("eventList")
	public String eventList(Model model) {
		eventService.eventList(model);
		return "event/eventList";
	}
	
	@RequestMapping("eventForm")
	public String eventForm() {
		
		return "event/eventForm";
	}
	
	@RequestMapping("eventResist")
	public String eventResist(EventCommand eventCommand, HttpSession session) {
		eventService.eventResist(eventCommand, session);
		return "redirect:eventList";
	}
}
