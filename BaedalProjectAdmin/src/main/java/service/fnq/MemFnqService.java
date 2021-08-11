package service.fnq;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.NoticeDTO;
import command.NoticeCommand;
import repository.FnqRepository;

public class MemFnqService {

	@Autowired
	FnqRepository fnqRepository;
	
	public void fnqResist(NoticeCommand noticeCommand, HttpSession session) {
		NoticeDTO dto = new NoticeDTO();
		dto.setNoticeContent(noticeCommand.getNoticeCon());
		dto.setNoticeSub(noticeCommand.getNoticeSub());
		
		fnqRepository.memFnqResist(dto);
	}

	public void getList(Model model) {
		List<NoticeDTO> list = fnqRepository.memFnqList();
		model.addAttribute("lists", list);
	}

}
