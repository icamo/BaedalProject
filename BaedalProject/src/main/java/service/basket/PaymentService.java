package service.basket;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import command.OrdersCommand;
import model.AddrListDTO;
import model.AuthInfoDTO;
import model.CartDTO;
import model.OrderDTO;
import repository.BasketRepository;

@Service
public class PaymentService {
	@Autowired
	BasketRepository basketRepository;
	public void payInsert(OrdersCommand ordersCommand, HttpSession session) {
		OrderDTO dto = new OrderDTO();
		dto.setComId(ordersCommand.getComId());
		dto.setCouPon(ordersCommand.getCouPon());
		dto.setDeliveryPay(ordersCommand.getDeliveryPay());
		dto.setInstalMent(ordersCommand.getInstalMent());
		dto.setMemId(ordersCommand.getMemId());
		dto.setMemPhone(ordersCommand.getMemPhone());
		dto.setMethodsPayment(ordersCommand.getMethodsPayment());
		dto.setOrderAddress(ordersCommand.getOrderAddress());
		dto.setOrderDate(ordersCommand.getOrderDate());
		dto.setOrderNum(ordersCommand.getOrderNum());
		dto.setOrderRequest(ordersCommand.getOrderRequest());
		dto.setOrderResult(ordersCommand.getOrderResult());
		dto.setOrdersituation(ordersCommand.getOrdersituation());
		dto.setOrderState(ordersCommand.getOrderState());
		dto.setTotalPrice(ordersCommand.getTotalPrice());

		
		basketRepository.payInsert(dto);
		
		String[] menuId = ordersCommand.getMenuIds().split(",");
		String[] mCount = ordersCommand.getmCounts().split(",");
		int b = menuId.length;
		for(int i = 0; i < b; i++) {
			CartDTO cartDTO = new CartDTO();
			cartDTO.setOrderNum(ordersCommand.getOrderNum());
			cartDTO.setMenuId(menuId[i]);
			cartDTO.setMenuCount(mCount[i]);
			basketRepository.cartInsert(cartDTO);
		}
	
	}

    

	public void orderNum(Model model) {
		String orderNum = basketRepository.orderNum();
		model.addAttribute("orderNum", orderNum);
	}
	
	public void addrList(Model model, HttpSession session) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		String memId = authInfo.getUserId();
		List<AddrListDTO> addrList = basketRepository.addrList(memId);
		model.addAttribute("addrList", addrList);
	}

}
