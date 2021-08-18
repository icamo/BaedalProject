package service.shop;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.AuthInfoDTO;
import Model.CompanyDTO;
import repository.ShopRepository;

public class MyShopListService {
	
	@Autowired
	ShopRepository shopRepository;

	public void myShopList(HttpSession session, Model model) {
		AuthInfoDTO authInfo = (AuthInfoDTO) session.getAttribute("authInfo");
		String ceoId=authInfo.getUserId();
		List<CompanyDTO> list = shopRepository.shopList(ceoId);
		model.addAttribute("lists", list);
	}

}
