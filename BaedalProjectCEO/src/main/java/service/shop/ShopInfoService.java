package service.shop;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.CompanyDTO;
import command.CompanyCommand;
import repository.ShopRepository;

public class ShopInfoService {
	@Autowired
	ShopRepository shopRepository;
	public void shopInfo(CompanyCommand companyCommand, Model model) {
		CompanyDTO dto = new CompanyDTO();
		dto = shopRepository.shopInfo(companyCommand.getComId());
		model.addAttribute("dto", dto);
	}
}
