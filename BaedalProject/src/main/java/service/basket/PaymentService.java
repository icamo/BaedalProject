package service.basket;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import command.AddrListCommand;
import model.AuthInfoDTO;
import model.OrderDTO;
import repository.BasketRepository;

@Service
public class PaymentService {
	@Autowired
	BasketRepository basketRepository;
	public void payInsert(OrderDTO orderDTO) {
		basketRepository.payInsert(orderDTO);
	}
	
	public void orderNum(Model model) {
		String orderNum = basketRepository.orderNum();
		model.addAttribute("orderNum", orderNum);
	}
	
	public void addrList(Model model, HttpSession session) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		String memId = authInfo.getUserId();
		List<AddrListCommand> addrList = basketRepository.addrList(memId);
		model.addAttribute("addrList", addrList);
	}
}
