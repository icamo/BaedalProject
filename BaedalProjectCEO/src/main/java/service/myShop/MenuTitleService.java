package service.myShop;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.AuthInfoDTO;
import Model.MenuDTO;
import Model.MenuTitleDTO;
import command.MenuCommand;
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

	public void titleInfo(String menuTitleNum, Model model) {		
		MenuTitleDTO dto = myShopMenuRepository.titleInfo(menuTitleNum);
		model.addAttribute("dto", dto);
	}

	public void menuResist(MenuCommand menuCommand, HttpSession session) {
		MenuDTO dto = new MenuDTO();
		AuthInfoDTO authInfo = (AuthInfoDTO) session.getAttribute("authInfo");
		dto.setComId(authInfo.getComId());
		dto.setMenuExplain(menuCommand.getMenuExplain());
		dto.setMenuName(menuCommand.getMenuName());
		dto.setMenuPrice(menuCommand.getMenuPrice());
		dto.setMenuTitleNum(menuCommand.getMenuTitleNum());
		dto.setMenuImg("");
		System.out.println("�޴�Ÿ��Ʋ"+menuCommand.getMenuTitleNum());
		
		boolean k = menuCommand.getMenuImg().getOriginalFilename().isEmpty();
		if(!k) {
			String original = menuCommand.getMenuImg().getOriginalFilename();
			String originalExt = original.substring(original.lastIndexOf("."));
			String store = UUID.randomUUID().toString().replace("-", "")+originalExt;
			String filePath = session.getServletContext().getRealPath("WEB-INF/view/resources/menuImg");
			File file = new File(filePath+"/"+store);
			try {
				menuCommand.getMenuImg().transferTo(file);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			dto.setMenuImg(store);
		}
		
		myShopMenuRepository.menuResist(dto);
	}

	public void detailMenuList(String menuTitleNum, Model model) {
		List<MenuDTO> list = myShopMenuRepository.detailMenuList(menuTitleNum);
		model.addAttribute("lists", list);
	}

	public void menuSell(String menuId, Model model) {
		MenuDTO dto = myShopMenuRepository.menuInfo(menuId);
		myShopMenuRepository.menuSell(dto);
		model.addAttribute("menuTitleNum", dto.getMenuTitleNum());
	}
}
