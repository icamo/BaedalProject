package service.myShop;

import org.springframework.beans.factory.annotation.Autowired;

import Model.CompanyDTO;
import command.CompanyCommand;
import repository.MyShopRepository;

public class ComNoticeService {
	@Autowired
	MyShopRepository myShopRepository;
	
	//공지사항 등록
	public void comNoticeEn(CompanyCommand companyCommand) {
		CompanyDTO dto = new CompanyDTO();
		dto.setComId(companyCommand.getComId());
		dto.setComNotice(companyCommand.getComNotice());
		dto.setComNoticeImg(companyCommand.getComNoticeImg());
		
		myShopRepository.comNoticeEn(dto);
	}
	
	//공지사항 수정
	public void comNco(CompanyCommand companyCommand) {
		CompanyDTO dto = new CompanyDTO();
		dto.setComId(companyCommand.getComId());
		dto.setComNotice(companyCommand.getComNotice());
		dto.setComNoticeImg(companyCommand.getComNoticeImg());
		myShopRepository.comNco(dto);
	}
}
