package service.member;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.AuthInfoDTO;
import model.CartDTO;
import model.MenuInfoDTO;
import model.OrderListDTO;
import repository.BasketRepository;

public class OrderListService {
	@Autowired
	BasketRepository basketRepository;
	
	public void orderList(Model model, HttpSession session) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		String memId = authInfo.getUserId();
		List<OrderListDTO> orderList = basketRepository.orderList(memId);
		model.addAttribute("orderList", orderList);
	}
	
	public void orderMenuName(String orderNum, Model model, HttpSession session) {
		List<MenuInfoDTO> dto = basketRepository.listMenuName(orderNum);
		model.addAttribute("menuNameList", dto);
	}
	

}
