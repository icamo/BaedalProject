package service.event;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.EventDTO;
import command.EventCommand;
import repository.EventRepository;

public class EventService {
	
	@Autowired
	EventRepository eventRepository;

	public void eventResist(EventCommand eventCommand, HttpSession session) {
		EventDTO dto = new EventDTO();
		
		dto.setEventName(eventCommand.getEventName());
		
		String original = eventCommand.getEventImg().getName();
		String originalExt = original.substring(original.lastIndexOf("."));
		String store = UUID.randomUUID().toString().replace("-", "")+originalExt;
		String filePath = session.getServletContext().getRealPath("resources/events");
		File file = new File(eventCommand.getEventImg(), filePath+"/"+store);
		try {
			file.createNewFile();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		dto.setEventImg(store);
		
		eventRepository.eventResist(dto);
	}

	public void eventList(Model model) {
		List<EventDTO> list = eventRepository.getEventList();
		model.addAttribute("lists", list);
	}

}
