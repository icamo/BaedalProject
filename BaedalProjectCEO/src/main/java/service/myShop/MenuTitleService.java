package service.myShop;

import javax.servlet.http.HttpSession;

import Model.AuthInfoDTO;
import Model.MenuTitleDTO;

public class MenuTitleService {
	
	

	public void menuTitleResist(String menuTitleName, HttpSession session) {
		AuthInfoDTO authInfo = (AuthInfoDTO) session.getAttribute("authInfo");
		MenuTitleDTO dto = new MenuTitleDTO();
		dto.setComId(authInfo.getComId());
		dto.setMenuTitleName(menuTitleName);
		
		
	}

}
