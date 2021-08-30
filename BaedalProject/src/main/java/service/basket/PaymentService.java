package service.basket;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

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

}
