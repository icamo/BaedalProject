package service.myShop;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.AuthInfoDTO;
import Model.DateDTO;
import Model.OrderDTO;
import Model.ReviewDTO;
import command.OrderCommand;
import repository.MyShopRepository;

public class LiveOrderService {
	@Autowired
	MyShopRepository myShopRepository;
	public void liveOrder(Model model,HttpSession session) {
		AuthInfoDTO authInfo = (AuthInfoDTO) session.getAttribute("authInfo");
		String comId = authInfo.getComId();
		List<OrderDTO> list = myShopRepository.liveOrder(comId);
		model.addAttribute("lists",list);
	}
	
	public void orderDetail(String orderNum,Model model) {
		OrderDTO dto = myShopRepository.orderDetail(orderNum);
		model.addAttribute("dto", dto);
	}
	
	public void orderConfirm(OrderCommand orderCommand) {
		OrderDTO dto = new OrderDTO();
		dto.setOrderNum(orderCommand.getOrderNum());
		dto.setOrderResult(orderCommand.getOrderResult());
		if (orderCommand.getOrderResult() == "주문거절") {
			dto.setOrderState("주문거절");
		}else {
			dto.setOrderState("주문완료");
		}
		if (orderCommand.getOrderResult() == "주문거절") {
			dto.setOrderSituation("주문거절");
		}else {
			dto.setOrderSituation(orderCommand.getOrderSituation());
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
	
	public void liveOverStateUpdate(String oderNum,String orderState) {
		OrderDTO dto = new OrderDTO();
		dto.setOrderNum(oderNum);
		dto.setOrderState(orderState);
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
}
