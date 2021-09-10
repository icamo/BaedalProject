package service.member;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import controller.PageAction;
import model.AuthInfoDTO;
import model.MenuInfoDTO;
import model.OrderListDTO;
import model.StartEndPageDTO;
import repository.BasketRepository;

public class OrderListService {
	@Autowired
	BasketRepository basketRepository;
	
//	public void orderList(Model model, HttpSession session) {
//		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
//		String memId = authInfo.getUserId();
//		List<OrderListDTO> orderList = basketRepository.orderList(memId);
//		model.addAttribute("orderList", orderList);
//	}
	
	public void orderList(Model model, Integer page,HttpSession session) {
		OrderListDTO dto = new OrderListDTO();
		int limit = 3;
		int limitPage = 5;
		if(page != null) {
			Long startRow = ((long)page - 1) * limit ;
			Long endRow = startRow + limit -1;
			StartEndPageDTO sep = new StartEndPageDTO();
			sep.setStartRow(startRow);
			sep.setEndRow(endRow);
			dto.setStartEndPageDTO(sep);
		}
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		String memId = authInfo.getUserId();
		dto.setMemId(memId);
		List<OrderListDTO> orderList = basketRepository.orderList(dto);
		int count = basketRepository.count(memId);
		model.addAttribute("orderList", orderList);
		model.addAttribute("count", count);
		
		if(page != null) {
			PageAction pageAction = new PageAction();
			pageAction.page(count, limit, page, limitPage, model, "foodsOrderList");
		}
	}	
	
	
	public void orderMenuName(String orderNum, Model model, HttpSession session) {
		List<MenuInfoDTO> dto = basketRepository.listMenuName(orderNum);
		model.addAttribute("menuNameList", dto);
	}
	

}
