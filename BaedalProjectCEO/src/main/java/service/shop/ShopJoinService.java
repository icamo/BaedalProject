package service.shop;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.validation.Errors;

import Model.AuthInfoDTO;
import Model.CompanyDTO;
import command.CompanyCommand;
import repository.ShopRepository;

public class ShopJoinService {
	@Autowired
	ShopRepository shopRepository;
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	
	public void shopJoin(CompanyCommand companyCommand, HttpSession session,Errors errors) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		String ceoId = authInfo.getUserId();
		CompanyDTO dto = new CompanyDTO();

		dto.setCeoId(ceoId); 
		dto.setComNum(companyCommand.getComNum());
		dto.setCeoName(companyCommand.getCeoName());
		dto.setComName(companyCommand.getComName());
		dto.setComAddress(companyCommand.getComAddress());
		dto.setComCateGory(companyCommand.getComCateGory());
		dto.setDeliverypay(companyCommand.getDeliverypay());
		dto.setMinPrice(companyCommand.getMinPrice());
		dto.setDeliveryZone(companyCommand.getDeliveryZone());
		dto.setBusinesstime(companyCommand.getBusinesstime());
		dto.setFreeDelivery(companyCommand.getFreeDelivery());
		
		shopRepository.shopJoin(dto);
	}
	
}
