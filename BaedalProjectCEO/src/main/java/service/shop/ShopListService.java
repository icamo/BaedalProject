package service.shop;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.CompanyDTO;
import repository.ShopRepository;

public class ShopListService {
	@Autowired
	ShopRepository shopRepository;
	
	public void shopList(Model model) {
		CompanyDTO dto = new CompanyDTO();
		List<CompanyDTO> list = shopRepository.shopList(dto);
		model.addAttribute("lists", list);
	}
}
