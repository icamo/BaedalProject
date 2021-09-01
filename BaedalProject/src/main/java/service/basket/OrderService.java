package service.basket;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import command.PaymentCommand;
import model.AuthInfoDTO;
import repository.BasketRepository;

public class OrderService {
	@Autowired
	BasketRepository basketRepository;
	
	public void orderCk(String orderNum,HttpSession session,Model model) {
		PaymentCommand dto = 
				basketRepository.paymentCk(orderNum);
		model.addAttribute("orderCk",dto);
	}


	

}
