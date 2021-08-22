package model;

import java.sql.Date;

public class OrderDTO {
	
	String orderNum;
	Date orderDate;
	String methodsPayment;
	String orderResult;
	String orderAddress;
	String orderRequset;
	String menuId;
	String comId;
	String ordersituation;
	Integer instalMent;
	String couPon;
	String orderState;
	String memID;
	
	public String getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public String getMethodsPayment() {
		return methodsPayment;
	}
	public void setMethodsPayment(String methodsPayment) {
		this.methodsPayment = methodsPayment;
	}
	public String getOrderResult() {
		return orderResult;
	}
	public void setOrderResult(String orderResult) {
		this.orderResult = orderResult;
	}
	public String getOrderAddress() {
		return orderAddress;
	}
	public void setOrderAddress(String orderAddress) {
		this.orderAddress = orderAddress;
	}
	public String getOrderRequset() {
		return orderRequset;
	}
	public void setOrderRequset(String orderRequset) {
		this.orderRequset = orderRequset;
	}
	public String getMenuId() {
		return menuId;
	}
	public void setMenuId(String menuId) {
		this.menuId = menuId;
	}
	public String getComId() {
		return comId;
	}
	public void setComId(String comId) {
		this.comId = comId;
	}
	public String getOrdersituation() {
		return ordersituation;
	}
	public void setOrdersituation(String ordersituation) {
		this.ordersituation = ordersituation;
	}
	public Integer getInstalMent() {
		return instalMent;
	}
	public void setInstalMent(Integer instalMent) {
		this.instalMent = instalMent;
	}
	public String getCouPon() {
		return couPon;
	}
	public void setCouPon(String couPon) {
		this.couPon = couPon;
	}
	public String getOrderState() {
		return orderState;
	}
	public void setOrderState(String orderState) {
		this.orderState = orderState;
	}
	public String getMemID() {
		return memID;
	}
	public void setMemID(String memID) {
		this.memID = memID;
	}
	

}
