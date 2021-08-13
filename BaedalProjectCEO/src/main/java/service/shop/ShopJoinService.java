package service.shop;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.web.multipart.MultipartFile;

import Model.AuthInfoDTO;
import Model.CompanyDTO;
import command.CompanyCommand;
import repository.CompanyRepository;

public class ShopJoinService {
	@Autowired
	CompanyRepository companyRepository;
	
	public void shopInsert(CompanyCommand companyCommand,HttpSession session,Errors errors) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		String ceoId = authInfo.getUserId();
		CompanyDTO dto = new CompanyDTO();
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
		dto.setCeoId(ceoId);
		companyRepository.comInsert(dto);
	}
	
}
/*
String comImg="";
if(!companyCommand.getComImg()[0].getOriginalFilename().equals("")) {
	for(MultipartFile mf : companyCommand.getComImg()) {
		String original = mf.getOriginalFilename();
		String originalExt = 
				original.substring(original.lastIndexOf("."));
		String store = 
				UUID.randomUUID().toString().replace("-","")
				+originalExt;
		comImg += store + ",";
		String realPath = 
				session.getServletContext().getRealPath("WEB-INF/view/resources");
		File file = new File(realPath + "/" + store);
		try {mf.transferTo(file);} 
		catch (Exception e) {e.printStackTrace();} 
	}
	dto.setComImg(comImg);
}
*/