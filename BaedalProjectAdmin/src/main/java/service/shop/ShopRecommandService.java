package service.shop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.RecommandDTO;
import repository.ShopRepository;

public class ShopRecommandService {
	
	@Autowired
	ShopRepository shopRepository;

	public void recommandShopList(Model model) {
		List<RecommandDTO> list = shopRepository.recommandShopList();
		model.addAttribute("lists", list);
	}

	public void recommandDetail(String recNum, Model model) {
		RecommandDTO dto = new RecommandDTO();
		dto = shopRepository.recommandDetail(recNum);
		model.addAttribute("dto", dto);
	}

}
