package webSocket;

import java.util.List;

public class OrderMenuInfoDTO {
	OrderDTO orderDTO;
	List<MenuInfoDTO> menuInfos;
	public OrderDTO getOrderDTO() {
		return orderDTO;
	}
	public void setOrderDTO(OrderDTO orderDTO) {
		this.orderDTO = orderDTO;
	}
	public List<MenuInfoDTO> getMenuInfos() {
		return menuInfos;
	}
	public void setMenuInfos(List<MenuInfoDTO> menuInfos) {
		this.menuInfos = menuInfos;
	}
}
