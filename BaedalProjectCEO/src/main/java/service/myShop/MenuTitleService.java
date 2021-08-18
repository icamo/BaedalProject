package service.myShop;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.AuthInfoDTO;
import Model.MenuTitleDTO;
import repository.MyShopMenuRepository;

public class MenuTitleService {
	
	@Autowired
	MyShopMenuRepository myShopMenuRepository;

	public void menuTitleResist(String menuTitleName, HttpSession session) {
		AuthInfoDTO authInfo = (AuthInfoDTO) session.getAttribute("authInfo");
		MenuTitleDTO dto = new MenuTitleDTO();
		dto.setComId(authInfo.getComId());
		dto.setMenuTitleName(menuTitleName);
		myShopMenuRepository.menuTitleResist(dto);
		
	}

	public void titleList(Model model, HttpSession session) {
		AuthInfoDTO authInfo = (AuthInfoDTO) session.getAttribute("authInfo");
		String comId = authInfo.getComId();
		List<MenuTitleDTO> list = myShopMenuRepository.titleList(comId);
		model.addAttribute("lists", list);
	}

	public void titleModify(String menuTitleNum, Model model) {
		MenuTitleDTO dto = myShopMenuRepository.titleInfo(menuTitleNum);
		model.addAttribute("dto", dto);
	}

	public void titleModifyCon(String menuTitleName, String menuTitleNum) {
		MenuTitleDTO dto = new MenuTitleDTO();
		dto.setMenuTitleNum(menuTitleNum);
		dto.setMenuTitleName(menuTitleName);
		myShopMenuRepository.titleModify(dto);
	}

}
