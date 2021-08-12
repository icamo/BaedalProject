package service.announce;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import Model.AuthInfoDTO;
import Model.NoticeDTO;
import command.NoticeCommand;
import repository.NoticeRepository;

public class MemNoticeService {
	
	@Autowired
	NoticeRepository noticeRepository;

	public void noticeResist(NoticeCommand noticeCommand, HttpSession session) {
		
		System.out.println(noticeCommand.getNoticeSub());
		AuthInfoDTO authInfo = (AuthInfoDTO) session.getAttribute("authInfo");
		NoticeDTO dto = new NoticeDTO();
		dto.setNoticeContent(noticeCommand.getNoticeCon());
		dto.setNoticeSub(noticeCommand.getNoticeSub());
		dto.setAdminsNum(authInfo.getAdminNum());
		
		String originalTotal="";
		
		System.out.println(dto.getAdminsNum());
		System.out.println(dto.getNoticeContent());
		System.out.println(dto.getNoticeSub());
		
		boolean k = noticeCommand.getNoticeFile()[0].getOriginalFilename().isBlank();
		
		if(!k) {
			for(MultipartFile mf : noticeCommand.getNoticeFile()) {
				String original = mf.getOriginalFilename();
				originalTotal += original+",";
				String filePath = session.getServletContext().getRealPath("/WEB-INF/view/resources/memNotice");
				System.out.println("파일경로 : "+filePath);
				File file = new File(filePath+"/"+original);
				
				try {
					mf.transferTo(file);
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			dto.setNoticeFile(originalTotal);
		}else {
			dto.setNoticeFile("");
		}
		noticeRepository.memNoticeResist(dto);
		
	}

	public void getList(Model model) {
		List<NoticeDTO> list = noticeRepository.getMemList();
		model.addAttribute("lists",list);
	}

}
