package command;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class CompanyCommand {
	String comId; //업체번호
	String comNum; //사업자번호
	String ceoName; //사업자대표
	String comName; //가게이름
	MultipartFile [] comImg; //가게사진
	String comAddress; //가게주소
	String comCateGory; //업종카테고리
	String comHall; //홀여부
	String deliverypay; //배달료
	String ceoId; //사장아이디
	String comNotice; //공지사항
	String minPrice; //최소금액
	String menuCategory; //메뉴카테고리
	String deliveryZone; //배달가능지역
	String origin; //원산지정보
	MultipartFile [] printflyers; //전단지
	String businesstime; //영업시간
	MultipartFile [] salesDeclaration; //영업신고증
	MultipartFile [] comNoticeImg; //공지사항이미지
	String freeDelivery; //
	Date comAppr; //업체인증
	Date appDate;
	
	String postNumber;
	public String getPostNumber() {
		return postNumber;
	}
	public void setPostNumber(String postNumber) {
		this.postNumber = postNumber;
	}
	
	public Date getAppDate() {
		return appDate;
	}
	public void setAppDate(Date appDate) {
		this.appDate = appDate;
	}
	
	public String getComId() {
		return comId;
	}
	public void setComId(String comId) {
		this.comId = comId;
	}
	public String getComNum() {
		return comNum;
	}
	public void setComNum(String comNum) {
		this.comNum = comNum;
	}
	public String getCeoName() {
		return ceoName;
	}
	public void setCeoName(String ceoName) {
		this.ceoName = ceoName;
	}
	public String getComName() {
		return comName;
	}
	public void setComName(String comName) {
		this.comName = comName;
	}
	public MultipartFile[] getComImg() {
		return comImg;
	}
	public void setComImg(MultipartFile[] comImg) {
		this.comImg = comImg;
	}
	public String getComAddress() {
		return comAddress;
	}
	public void setComAddress(String comAddress) {
		this.comAddress = comAddress;
	}
	public String getComCateGory() {
		return comCateGory;
	}
	public void setComCateGory(String comCateGory) {
		this.comCateGory = comCateGory;
	}
	public String getComHall() {
		return comHall;
	}
	public void setComHall(String comHall) {
		this.comHall = comHall;
	}
	public String getDeliverypay() {
		return deliverypay;
	}
	public void setDeliverypay(String deliverypay) {
		this.deliverypay = deliverypay;
	}
	public String getCeoId() {
		return ceoId;
	}
	public void setCeoId(String ceoId) {
		this.ceoId = ceoId;
	}
	public String getComNotice() {
		return comNotice;
	}
	public void setComNotice(String comNotice) {
		this.comNotice = comNotice;
	}
	public String getMinPrice() {
		return minPrice;
	}
	public void setMinPrice(String minPrice) {
		this.minPrice = minPrice;
	}
	public String getMenuCategory() {
		return menuCategory;
	}
	public void setMenuCategory(String menuCategory) {
		this.menuCategory = menuCategory;
	}
	public String getDeliveryZone() {
		return deliveryZone;
	}
	public void setDeliveryZone(String deliveryZone) {
		this.deliveryZone = deliveryZone;
	}
	public String getOrigin() {
		return origin;
	}
	public void setOrigin(String origin) {
		this.origin = origin;
	}
	public String getBusinesstime() {
		return businesstime;
	}
	public void setBusinesstime(String businesstime) {
		this.businesstime = businesstime;
	}
	public String getFreeDelivery() {
		return freeDelivery;
	}
	public void setFreeDelivery(String freeDelivery) {
		this.freeDelivery = freeDelivery;
	}
	public Date getComAppr() {
		return comAppr;
	}
	public void setComAppr(Date comAppr) {
		this.comAppr = comAppr;
	}
	public MultipartFile[] getPrintflyers() {
		return printflyers;
	}
	public void setPrintflyers(MultipartFile[] printflyers) {
		this.printflyers = printflyers;
	}
	public MultipartFile[] getSalesDeclaration() {
		return salesDeclaration;
	}
	public void setSalesDeclaration(MultipartFile[] salesDeclaration) {
		this.salesDeclaration = salesDeclaration;
	}
	public MultipartFile[] getComNoticeImg() {
		return comNoticeImg;
	}
	public void setComNoticeImg(MultipartFile[] comNoticeImg) {
		this.comNoticeImg = comNoticeImg;
	}
	
	
}
