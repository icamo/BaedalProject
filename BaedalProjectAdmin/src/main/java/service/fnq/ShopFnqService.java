package service.fnq;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.NoticeDTO;
import command.NoticeCommand;
import repository.FnqRepository;

public class ShopFnqService {

	@Autowired
	FnqRepository fnqRepository;
	
	public void fnqResist(NoticeCommand noticeCommand) {
		NoticeDTO dto = new NoticeDTO();
		dto.setNoticeContent(noticeCommand.getNoticeCon());
		dto.setNoticeSub(noticeCommand.getNoticeSub());
		
		fnqRepository.shopFnqResist(dto);
	}

	public void getList(Model model) {
		List<NoticeDTO> list = fnqRepository.shopFnqList();
		model.addAttribute("lists", list);
	}

	public void fnqDetail(String noticeNum, Model model) {
		NoticeDTO dto = fnqRepository.shopFnqDetail(noticeNum);
		model.addAttribute("dto", dto);
	}

	public void fnqDel(String noticeNum) {
		fnqRepository.shopFnqDel(noticeNum);
	}

}
