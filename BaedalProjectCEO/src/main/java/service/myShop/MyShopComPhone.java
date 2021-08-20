package service.myShop;

import org.springframework.beans.factory.annotation.Autowired;

import Model.CompanyDTO;
import command.CompanyCommand;
import repository.MyShopRepository;

public class MyShopComPhone {
	@Autowired
	MyShopRepository myShopRepository;
	
	public void comPhoneChange(CompanyCommand companyCommand) {
		CompanyDTO dto = new CompanyDTO();
		dto.setComId(companyCommand.getComId());
		dto.setComPhone(companyCommand.getComPhone());
		myShopRepository.comPhoneChange(dto);
	}
}
