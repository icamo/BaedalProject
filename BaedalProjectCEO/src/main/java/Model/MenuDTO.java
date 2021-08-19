package Model;

import org.springframework.web.multipart.MultipartFile;

public class MenuDTO {
	
	String menuId;
	String menuName;
	String menuPrice;
	String menuImg;
	String sell;
	String menuExplain;
	String menuChoice;
	String comId;
	String menuTitleNum;
	
	
	
	public String getMenuImg() {
		return menuImg;
	}
	public void setMenuImg(String menuImg) {
		this.menuImg = menuImg;
	}
	public String getMenuId() {
		return menuId;
	}
	public void setMenuId(String menuId) {
		this.menuId = menuId;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public String getMenuPrice() {
		return menuPrice;
	}
	public void setMenuPrice(String menuPrice) {
		this.menuPrice = menuPrice;
	}
	public String getSell() {
		return sell;
	}
	public void setSell(String sell) {
		this.sell = sell;
	}
	public String getMenuExplain() {
		return menuExplain;
	}
	public void setMenuExplain(String menuExplain) {
		this.menuExplain = menuExplain;
	}
	public String getMenuChoice() {
		return menuChoice;
	}
	public void setMenuChoice(String menuChoice) {
		this.menuChoice = menuChoice;
	}
	public String getComId() {
		return comId;
	}
	public void setComId(String comId) {
		this.comId = comId;
	}
	public String getMenuTitleNum() {
		return menuTitleNum;
	}
	public void setMenuTitleNum(String menuTitleNum) {
		this.menuTitleNum = menuTitleNum;
	}
	
	
}
