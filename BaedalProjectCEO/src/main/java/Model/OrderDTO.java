package Model;

import java.util.Date;

public class OrderDTO {
	// 주문리스트 
	String orderNum; // 주문번호
	Date orderDate; // 거래일시
	String methodsPayment; // 결제형태
	String orderResult; // 주문처리결과
	String orderAddress; // 주문자 주소 
	String orderRequest; // 주문 요청사항
	String comId; // 업체번호
	String orderSituation; // 예상소요시간
	int instalment; // 할부개월
	String coupon; // 쿠폰
	String orderState; // 주문상태
	String memId; // 회원아이디 	
	int totalPrice; // 총가격 
	
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
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
	public String getOrderRequest() {
		return orderRequest;
	}
	public void setOrderRequest(String orderRequest) {
		this.orderRequest = orderRequest;
	}
	public String getComId() {
		return comId;
	}
	public void setComId(String comId) {
		this.comId = comId;
	}
	public String getOrderSituation() {
		return orderSituation;
	}
	public void setOrderSituation(String orderSituation) {
		this.orderSituation = orderSituation;
	}
	public int getInstalment() {
		return instalment;
	}
	public void setInstalment(int instalment) {
		this.instalment = instalment;
	}
	public String getCoupon() {
		return coupon;
	}
	public void setCoupon(String coupon) {
		this.coupon = coupon;
	}
	public String getOrderState() {
		return orderState;
	}
	public void setOrderState(String orderState) {
		this.orderState = orderState;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}	
	
}
