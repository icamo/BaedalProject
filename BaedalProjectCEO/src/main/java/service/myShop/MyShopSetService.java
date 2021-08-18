package service.myShop;

import javax.servlet.http.HttpSession;

import Model.AuthInfoDTO;

public class MyShopSetService {

	public void shopSet(HttpSession session, String comId) {
		AuthInfoDTO authInfo = (AuthInfoDTO) session.getAttribute("authInfo");
		authInfo.setComId(comId);
		session.setAttribute("authInfo", authInfo);
	}

}
