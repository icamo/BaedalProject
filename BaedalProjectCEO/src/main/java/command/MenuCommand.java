package command;

import org.springframework.web.multipart.MultipartFile;

public class MenuCommand {
	
	String menuName;
	String menuPrice;
	MultipartFile menuImg;
	String menuExplain;
	String menuTitleNum;
	String menuId;
	
	
	
	public String getMenuId() {
		return menuId;
	}
	public void setMenuId(String menuId) {
		this.menuId = menuId;
	}
	public MultipartFile getMenuImg() {
		return menuImg;
	}
	public void setMenuImg(MultipartFile menuImg) {
		this.menuImg = menuImg;
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
	public String getMenuExplain() {
		return menuExplain;
	}
	public void setMenuExplain(String menuExplain) {
		this.menuExplain = menuExplain;
	}
	public String getMenuTitleNum() {
		return menuTitleNum;
	}
	public void setMenuTitleNum(String menuTitleNum) {
		this.menuTitleNum = menuTitleNum;
	}

	
}
