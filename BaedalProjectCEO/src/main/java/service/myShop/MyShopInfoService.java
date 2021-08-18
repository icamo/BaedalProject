package service.myShop;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.CompanyDTO;
import command.CompanyCommand;
import repository.MyShopRepository;

public class MyShopInfoService {
	@Autowired
	MyShopRepository MyshopRepository;
	public void myShopInfo(CompanyCommand companyCommand,Model model) {
		CompanyDTO dto = new CompanyDTO();
		dto = MyshopRepository.myShopInfo(companyCommand.getComId());
		model.addAttribute("dto", dto);
	}
}
