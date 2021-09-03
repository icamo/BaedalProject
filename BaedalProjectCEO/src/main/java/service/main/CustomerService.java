package service.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.CeoNoticeDTO;
import command.CeoNoticeCommand;
import command.NoticeCommand;
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
	}

	public void CusFnqList(Model model) {
		List<CeoNoticeDTO> list = mainRepository.CusFnqList();
		model.addAttribute("lists", list);
	}
	
	/*
	 * public void CusFnq(NoticeCommand noticeCommand) { CeoNoticeDTO dto = new
	 * CeoNoticeDTO(); dto.setCeoNoticeSub(noticeCommand.getNoticeSub());
	 * dto.setCeoNoticeContent(noticeCommand.getNoticeCon());
	 * dto.setCeoNoticeNum(noticeCommand.getNoticeNum());
	 * mainRepository.CusFnq(dto); }
	 */
}
