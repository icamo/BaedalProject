package service.shop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.CompanyDTO;
import repository.CompanyRepository;

public class MyShopListService {
	@Autowired
	CompanyRepository companyRepository;
	
	public void myShopList(Model model) {
		List<CompanyDTO> list = companyRepository.myShopList();
		model.addAttribute("lists",list);
	}
}
