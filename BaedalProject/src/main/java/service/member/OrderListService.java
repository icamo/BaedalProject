package service.member;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import command.OrderCommand;
import model.AuthInfoDTO;
import repository.BasketRepository;

public class OrderListService {
	@Autowired
	BasketRepository basketRepository;
	
	public void orderList(Model model, HttpSession session) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		String memId = authInfo.getUserId();
		List<OrderCommand> orderList = basketRepository.orderList(memId);
		model.addAttribute("orderList", orderList);
	}

}
