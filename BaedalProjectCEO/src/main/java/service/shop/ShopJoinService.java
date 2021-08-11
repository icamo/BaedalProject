package service.shop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import Model.CompanyDTO;
import command.CompanyCommand;
import repository.CompanyRepository;

public class ShopJoinService {
	@Autowired
	CompanyRepository companyRepository;
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	
	public void shopInsert(CompanyCommand companyCommand) {
		CompanyDTO dto = new CompanyDTO();
		dto.setAppDate(companyCommand.getAppDate());
		dto.setBusinesstime(companyCommand.getBusinesstime());
		dto.setCeoId(companyCommand.getCeoId());
		dto.setCeoName(companyCommand.getCeoName());
		dto.setComAddress(companyCommand.getComAddress());
		dto.setComAppr(companyCommand.getComAppr());
		dto.setComCateGory(companyCommand.getComCateGory());
		dto.setComHall(companyCommand.getComHall());
		dto.setComId(companyCommand.getComId());
		dto.setComImg(companyCommand.getComImg());
		dto.setComName(companyCommand.getComName());
		dto.setComNotice(companyCommand.getComNotice());
		dto.setComNoticeImg(companyCommand.getComNoticeImg());
		dto.setComNum(companyCommand.getComNum());
		dto.setDeliverypay(companyCommand.getDeliverypay());
		dto.setDeliveryZone(companyCommand.getDeliveryZone());
		dto.setFreeDelivery(companyCommand.getFreeDelivery());
		dto.setMenuCategory(companyCommand.getMenuCategory());
		dto.setMinPrice(companyCommand.getMinPrice());
		dto.setOrigin(companyCommand.getOrigin());
		dto.setPrintflyers(companyCommand.getPrintflyers());
		dto.setSalesDeclaration(companyCommand.getSalesDeclaration());
		
		companyRepository.comInsert(dto);
	}
	
}
