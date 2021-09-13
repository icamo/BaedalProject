package service.myShop;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;

import Model.AuthInfoDTO;
import Model.DateDTO;
import Model.MenuListDTO;
import Model.OrderDTO;
import Model.StartEndPageDTO;
import command.OrderCommand;
import controller.PageAction;
import repository.MyShopRepository;

public class LiveOrderService {
	@Autowired
	MyShopRepository myShopRepository;
	
	public void liveOrder(Model model,String comId) {
		List<OrderDTO> list = myShopRepository.liveOrder(comId);
		model.addAttribute("lists",list);
	}
	
	public void waiting(Model model,String comId) {
		List<OrderDTO> list = myShopRepository.waiting(comId);
		model.addAttribute("waiting",list);
	}
	
	public void shopOrderList (Integer page,Model model,HttpSession session) {
		OrderDTO dto = new OrderDTO();
		
		int limit = 10;
		int limitPage = 5;
		
		Long startRow = ((long)page -1 ) * limit +1;
		Long endRow = startRow + limit -1;
		
		StartEndPageDTO sep = new StartEndPageDTO();
		sep.setStartRow(startRow);
		sep.setEndRow(endRow);
		dto.setStartEndPageDTO(sep);
			
		AuthInfoDTO authInfo = (AuthInfoDTO) session.getAttribute("authInfo");
		String comId = authInfo.getComId();
		dto.setComId(comId);
		List<OrderDTO> list = myShopRepository.shopOrderList(dto);
		
		System.out.println(list.size());
		
		int count = myShopRepository.count(comId);
		model.addAttribute("lists",list);
		model.addAttribute("count", count);

		PageAction pageAction = new PageAction();
		pageAction.page(count, limit, page, limitPage, model, "shopOrderList");

	}
	
	public void orderDetail(String orderNum,Model model) {
		OrderDTO dto = myShopRepository.orderDetail(orderNum);
		model.addAttribute("dto", dto);
	}
	
	public void orderMenuName(String orderNum, Model model) {
		List<MenuListDTO> menuList = myShopRepository.listMenuName(orderNum);
		model.addAttribute("menuLists", menuList);
	}
	
	public void orderConfirm(String orderResult,String orderSituation,String orderNum) {
		OrderDTO dto = new OrderDTO();
		dto.setOrderNum(orderNum);
		dto.setOrderResult(orderResult);
		if (orderResult.equals("주문거절")) {
			dto.setOrderState("주문거절");
		}else {
			dto.setOrderState("주문완료");
		}
		if (orderResult.equals("주문거절")) {
			dto.setOrderSituation("주문거절");
		}else {
			dto.setOrderSituation(orderSituation);
		}
		myShopRepository.orderConfirm(dto);
	}
	
	public void orderDateList(HttpSession session,String startDate,String endDate,Model model) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		String comId = authInfo.getComId();
		DateDTO dto = new DateDTO();
		dto.setComId(comId);
		dto.setStartDate(startDate);
		dto.setEndDate(endDate);
		List<OrderDTO> list = myShopRepository.orderDateList(dto);
		model.addAttribute("lists",list);
	}
	
	public void liveOverStateUpdate(String oderNum,String orderState,String comId) {
		OrderDTO dto = new OrderDTO();
		dto.setOrderNum(oderNum);
		dto.setOrderState(orderState);
		dto.setComId(comId);
		myShopRepository.liveOverStateUpdate(dto);
	}
	
	public void orderDone(Model model,HttpSession session) {
		AuthInfoDTO authInfo = (AuthInfoDTO) session.getAttribute("authInfo");
		String comId = authInfo.getComId();
		List<OrderDTO> list = myShopRepository.orderDone(comId);
		model.addAttribute("lists",list);
	}
	
	public void orderReject(Model model,HttpSession session) {
		AuthInfoDTO authInfo = (AuthInfoDTO) session.getAttribute("authInfo");
		String comId = authInfo.getComId();
		List<OrderDTO> list = myShopRepository.orderReject(comId);
		model.addAttribute("lists",list);
	}
	
	public void newOrder(String orderNum,Model model) {
		OrderDTO dto = myShopRepository.newOrder(orderNum);
		model.addAttribute("dto", dto);
	}
	
}
