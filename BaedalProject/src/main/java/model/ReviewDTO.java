package model;

public class ReviewDTO {
	
	String orderNum;
	String reviewContent;
	Integer reviewStar;
	String reviewImg;
	String reviewDate;
	String ceoReplies;
	
	public String getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}
	public String getReviewContent() {
		return reviewContent;
	}
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
	public Integer getReviewStar() {
		return reviewStar;
	}
	public void setReviewStar(Integer reviewStar) {
		this.reviewStar = reviewStar;
	}
	public String getReviewImg() {
		return reviewImg;
	}
	public void setReviewImg(String reviewImg) {
		this.reviewImg = reviewImg;
	}
	public String getReviewDate() {
		return reviewDate;
	}
	public void setReviewDate(String reviewDate) {
		this.reviewDate = reviewDate;
	}
	public String getCeoReplies() {
		return ceoReplies;
	}
	public void setCeoReplies(String ceoReplies) {
		this.ceoReplies = ceoReplies;
	}
	

}
