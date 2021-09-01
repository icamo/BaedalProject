package service.sc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.MemNoticeDTO;
import repository.NoticeRepository;

public class CustomerCenterService {
	
	@Autowired
	NoticeRepository noticeRepository;

	public void centerList(Model model) {
		List<MemNoticeDTO> list = noticeRepository.noticeList();
		model.addAttribute("lists", list);
	}

	public void centerInfo(String memNoticeNum, Model model) {
		MemNoticeDTO dto = new MemNoticeDTO();
		dto = noticeRepository.centerInfo(memNoticeNum);
		model.addAttribute("dto", dto);
	}

}
