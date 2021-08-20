package model;

public class BasketDTO {
	
	String basketNum;
	String memId;
	String menuId;
	Integer menuCount;
	String comId;
	Integer totalPrice;
	String choiceMenu;
	String menuImg;
	String menuName;
	Integer menuPrice;
	
	public String getMenuImg() {
		return menuImg;
	}
	public void setMenuImg(String menuImg) {
		this.menuImg = menuImg;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public Integer getMenuPrice() {
		return menuPrice;
	}
	public void setMenuPrice(Integer menuPrice) {
		this.menuPrice = menuPrice;
	}
	public String getBasketNum() {
		return basketNum;
	}
	public void setBasketNum(String basketNum) {
		this.basketNum = basketNum;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMenuId() {
		return menuId;
	}
	public void setMenuId(String menuId) {
		this.menuId = menuId;
	}
	public Integer getMenuCount() {
		return menuCount;
	}
	public void setMenuCount(Integer menuCount) {
		this.menuCount = menuCount;
	}
	public String getComId() {
		return comId;
	}
	public void setComId(String comId) {
		this.comId = comId;
	}
	public Integer getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(Integer totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getChoiceMenu() {
		return choiceMenu;
	}
	public void setChoiceMenu(String choiceMenu) {
		this.choiceMenu = choiceMenu;
	}
	
	

}
