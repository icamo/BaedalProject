package service.myShop;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import Model.AuthInfoDTO;
import Model.CompanyDTO;
import repository.ShopRepository;

public class MyShopSetService {
	
	@Autowired
	ShopRepository shopRepository;
	
	public void shopSet(HttpSession session, String comId) {
		AuthInfoDTO authInfo = (AuthInfoDTO) session.getAttribute("authInfo");
		CompanyDTO dto = shopRepository.shopInfo(comId);
		authInfo.setComId(comId);
		authInfo.setComName(dto.getComName());
		session.setAttribute("authInfo", authInfo);
	}

}
