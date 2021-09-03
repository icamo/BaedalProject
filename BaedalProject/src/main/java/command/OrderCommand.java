package command;

public class OrderCommand {
	
	String orderNum;
	String comImg;
	String comName;
	String menuName;
	Integer totalPrice;
	String reviewCheck;
	
	
	
	public String getReviewCheck() {
		return reviewCheck;
	}
	public void setReviewCheck(String reviewCheck) {
		this.reviewCheck = reviewCheck;
	}
	public String getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}
	public String getComImg() {
		return comImg;
	}
	public void setComImg(String comImg) {
		this.comImg = comImg;
	}
	public String getComName() {
		return comName;
	}
	public void setComName(String comName) {
		this.comName = comName;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public Integer getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(Integer totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	

}
