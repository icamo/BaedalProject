package service.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.CeoNoticeDTO;
import command.CeoNoticeCommand;
import repository.MainRepository;

public class CustomerService {
	@Autowired
	MainRepository mainRepository;
	
	public void CusCenter(Model model) {
		List<CeoNoticeDTO> list = mainRepository.custList();
		model.addAttribute("lists", list);
	}
	
	public void CusInfo(CeoNoticeCommand ceoNoticeCommand, Model model) {
		CeoNoticeDTO dto = new CeoNoticeDTO();
		dto = mainRepository.CusInfo(ceoNoticeCommand.getCeoNoticeNum());
		model.addAttribute("dto", dto);
		
		
		/*dto.setAdminsNum(ceoNoticeCommand.getAdminsNum());
		dto.setCeoNoticeContent(ceoNoticeCommand.getCeoNoticeContent());
		dto.setCeoNoticeDate(ceoNoticeCommand.getCeoNoticeDate());
		dto.setCeoNoticeFile(ceoNoticeCommand.getCeoNoticeFile());
		dto.setCeoNoticeNum(ceoNoticeCommand.getCeoNoticeNum());
		dto.setCeoNoticeSub(ceoNoticeCommand.getCeoNoticeSub());*/
	}
}
