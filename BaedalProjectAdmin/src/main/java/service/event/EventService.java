package service.event;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import Model.EventDTO;
import command.EventCommand;
import repository.EventRepository;

public class EventService {
	
	@Autowired
	EventRepository eventRepository;

	public void eventResist(EventCommand eventCommand, HttpSession session) {
		EventDTO dto = new EventDTO();
		
		dto.setEventName(eventCommand.getEventName());
		
		
		String original = eventCommand.getEventImg().getOriginalFilename();
		String originalExt = original.substring(original.lastIndexOf("."));
		String store = UUID.randomUUID().toString().replace("-", "")+originalExt;
		String filePath = session.getServletContext().getRealPath("WEB-INF/view/resources/events");
		System.out.println(filePath);
		File file = new File(filePath+"/"+store);
		try {
			eventCommand.getEventImg().transferTo(file);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		dto.setEventImg(store);
		eventRepository.eventResist(dto);
	}

	public void eventList(Model model) {
		List<EventDTO> list = eventRepository.getEventList();
		model.addAttribute("lists", list);
	}

	public void eventDetail(String eventNum, Model model) {
		EventDTO dto = eventRepository.eventDetail(eventNum);
		model.addAttribute("dto", dto);
	}

	public void eventDel(String eventNum, HttpSession session) {
		EventDTO dto = eventRepository.eventDetail(eventNum);
		String realPath = session.getServletContext().getRealPath("WEB-INF/view/resources/events");
		if(!dto.getEventImg().isBlank()) {
			File file = new File(realPath+"/"+dto.getEventImg());
			if(file.exists()) {
				file.delete();
			}
		}
		eventRepository.eventDel(eventNum);
	}
}
