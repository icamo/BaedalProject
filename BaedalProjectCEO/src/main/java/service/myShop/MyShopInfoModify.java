package service.myShop;

import org.springframework.beans.factory.annotation.Autowired;

import Model.CompanyDTO;
import command.CompanyCommand;
import repository.MyShopRepository;
import repository.ShopRepository;

public class MyShopInfoModify {
	@Autowired
	MyShopRepository myShopRepository;
	public void MyShopModify(CompanyCommand companyCommand) {
		CompanyDTO dto = new CompanyDTO();
		dto.setComId(companyCommand.getComId());
		dto.setDeliverypay(companyCommand.getDeliverypay());
		dto.setBusinesstime(companyCommand.getBusinesstime());
		dto.setComPhone(companyCommand.getComPhone());
		myShopRepository.shopUpdate(dto);
	}
}
