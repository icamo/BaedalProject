package service.shop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.RecommandDTO;
import Model.ShopDTO;
import repository.ShopRepository;

public class ShopRecommandService {
	
	@Autowired
	ShopRepository shopRepository;

	public void recommandShopList(Model model) {
		List<RecommandDTO> list = shopRepository.recommandShopList();
		model.addAttribute("lists", list);
	}

	public void recommandDetail(String recNum, String comId, Model model) {
		RecommandDTO dto = new RecommandDTO();
		dto = shopRepository.recommandDetail(recNum);
		ShopDTO dto2 = shopRepository.shopDetail(comId);
		model.addAttribute("dto", dto);
		model.addAttribute("dto2", dto2);
	}

}
