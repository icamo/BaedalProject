package webSocket;

import java.util.List;

import org.springframework.ui.Model;

public class WebOrderService {
	WebSocketRepository webSocketRepository = new WebSocketRepository();
	public OrderMenuInfoDTO orderDetail(String orderNum) {
		System.out.println(orderNum);
		return webSocketRepository.orderList(orderNum);
	}
}
