package service.foods;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.ShopDTO;
import repository.FoodsRepository;

public class CompanyDetailService {
	@Autowired
	FoodsRepository foodsRepository;
	
	public void comDetail(String comId, Model model) {
		ShopDTO dto = foodsRepository.comDetail(comId);
		model.addAttribute("dto", dto);
	}
}
