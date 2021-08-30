package controller.myShop;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Model.MenuChoiceDTO;
import command.MenuChoiceCommand;
import command.MenuCommand;
import service.myShop.MenuChoiceService;
import service.myShop.MenuTitleService;
import sun.java2d.opengl.WGLSurfaceData.WGLVSyncOffScreenSurfaceData;

@Controller
@RequestMapping("myShop/menu")
public class MyShopMenuController {
	
	@Autowired
	MenuTitleService menuTitleService; 
	@Autowired
	MenuChoiceService menuChoiceService;
	
	@RequestMapping("menuList")
	public String menuList(Model model, HttpSession session) {
		menuTitleService.titleList(model, session);
		return "myShop/menu/menuList";
	}
	
	@RequestMapping("menuTitleResist")
	public String menuTitle() {
		
		return "myShop/menu/menuTitleResist";
	}
	
	@RequestMapping("menuTitleResistCon")
	public String menuTitleResist(@RequestParam(value="menuTitleName")String menuTitleName, HttpSession session) {
		menuTitleService.menuTitleResist(menuTitleName, session);
		return "redirect:menuList";
	}
	
	@RequestMapping("titleModify")
	public String titleModify(@RequestParam(value="menuTitleNum")String menuTitleNum, Model model) {
		menuTitleService.titleModify(menuTitleNum, model);
		return "myShop/menu/titleModify";
	}
	
	@RequestMapping("titleModifyCon")
	public String titleModifyCon(@RequestParam(value="menuTitleNum")String menuTitleNum,
			@RequestParam(value="menuTitleName")String menuTitleName) {
		menuTitleService.titleModifyCon(menuTitleName, menuTitleNum);
		return "redirect:menuList";
	}
	
	@RequestMapping("detailMenuList")
	public String detailMenuList(@RequestParam(value="menuTitleNum")String menuTitleNum, Model model) {
		menuTitleService.titleInfo(menuTitleNum, model);
		menuTitleService.detailMenuList(menuTitleNum, model);
		return "myShop/menu/detailMenuList";
	}
	
	@RequestMapping("detailMenuResist")
	public String detailMenuResist(@RequestParam(value="menuTitleNum")String menuTitleNum, Model model) {
		menuTitleService.titleInfo(menuTitleNum, model);
		return "myShop/menu/detailMenuResist";
	}
	
	@RequestMapping("menuResist")
	public String menuResist(MenuCommand menuCommand, HttpSession session, Model model) {
		menuTitleService.menuResist(menuCommand, session);
		model.addAttribute("menuTitleNum", menuCommand.getMenuTitleNum());
		return "redirect:detailMenuList";
	}
	
	@RequestMapping("menuSell")
	public String menuSell(@RequestParam(value="menuId")String menuId, Model model) {
		menuTitleService.menuSell(menuId, model);
		return "redirect:detailMenuList";
	}
	
	@RequestMapping("menuOut")
	public String menuOut(@RequestParam(value="menuId")String menuId, @RequestParam(value="menuTitleNum")String menuTitleNum
			, Model model, HttpSession session) {
		model.addAttribute("menuTitleNum", menuTitleNum);
		menuTitleService.menuOut(menuId, session);
		return "redirect:detailMenuList";
	}
	
	@RequestMapping("menuModifyForm")
	public String menuModifyForm(@RequestParam(value="menuId")String menuId, Model model) {
		menuTitleService.detailMenu(menuId, model);
		return "myShop/menu/menuModifyForm";
	}
	
	@RequestMapping("menuImgOut")
	public String menuImgOut(@RequestParam(value="menuId")String menuId, Model model, HttpSession session) {
		menuTitleService.menuImgOut(menuId, session);
		model.addAttribute("menuId", menuId);
		return "redirect:menuModifyForm";
	}
	
	@RequestMapping("menuModify")
	public String menuModify(MenuCommand menuCommand, HttpSession session, Model model) {
		menuTitleService.menuModify(menuCommand, session, model);
		return "redirect:detailMenuList";
	}
	
	@RequestMapping("titleDel")
	public String titleDel(@RequestParam(value="menuTitleNum")String menuTitleNum) {
		menuTitleService.titleDel(menuTitleNum);
		return "redirect:menuList";
	}
	
	@RequestMapping("menuChoiceList")
	public String menuChoiceList(@RequestParam(value="menuId")String menuId, Model model) {
		menuTitleService.detailMenu(menuId, model);
		menuChoiceService.menuChoiceList(menuId, model);
		return "myShop/menu/menuChoiceList";
	}

	@RequestMapping("menuChoiceForm")
	public String menuChoiceForm(@RequestParam(value="menuId")String menuId, Model model) {		
		menuTitleService.detailMenu(menuId, model);
		return "myShop/menu/menuChoiceForm";
	}
	
	@RequestMapping("menuChoiceResist")
	public String menuChoiceResist(MenuChoiceCommand menuChoiceCommand) {
		menuChoiceService.choiceResist(menuChoiceCommand);
		return "redirect:menuChoiceList?menuId="+menuChoiceCommand.getMenuId();
	}
	
	@RequestMapping("menuChoiceDetail")
	public String menuChoiceDetail(@RequestParam(value="menuChoiceNum")String menuChoiceNum, Model model) {
		menuChoiceService.choiceInfo(menuChoiceNum, model);
		return "myShop/menu/menuChoiceDetail";
	}
	
	@RequestMapping("choiceOptionResist")
	public String choiceOptionResist(MenuChoiceCommand menuChoiceCommand, Model model) {
		menuChoiceService.choiceOptionResist(menuChoiceCommand, model);
		return "redirect:menuChoiceDetail?menuChoiceNum="+menuChoiceCommand.getMenuChoiceNum();
	}
	
	@RequestMapping("choiceOptionDel")
	public String choiceOptionDel(@RequestParam(value="choiceOption")String choiceOption, @RequestParam(value="menuChoiceNum")String menuChoiceNum) {
		MenuChoiceDTO dto = menuChoiceService.choiceOptionDelete(choiceOption, menuChoiceNum);
		return "redirect:menuChoiceDetail?menuChoiceNum="+dto.getMenuChoiceNum();
	}
	
	@RequestMapping("choiceMenuModifyForm")
	public String choiceMenuModifyForm(@RequestParam(value="menuChoiceNum")String menuChoiceNum, @RequestParam(value="menuId")String menuId, Model model) {
		menuTitleService.detailMenu(menuId, model);
		menuChoiceService.choiceDetail(menuChoiceNum, model);
		return "myShop/menu/menuChoiceModify1";
	}
	
	@RequestMapping("menuChoiceModify")
	public String menuChoiceModify(MenuChoiceCommand menuChoiceCommand, Model model) {
		menuChoiceService.choiceModify(menuChoiceCommand, model);
		return "redirect:menuChoiceList";
	}
	
	@RequestMapping("choiceMenuDel")
	public String choiceMenuDel(@RequestParam(value="menuChoiceNum")String menuChoiceNum, @RequestParam(value="menuId")String menuId, Model model) {
		menuChoiceService.choiceDel(menuChoiceNum, menuId);
		model.addAttribute("menuId", menuId);
		return "redirect:menuChoiceList";
	}
}
