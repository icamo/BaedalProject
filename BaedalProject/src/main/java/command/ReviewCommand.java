package command;

import org.springframework.web.multipart.MultipartFile;

public class ReviewCommand {
	
	String orderNum;
	String reviewContent;
	Integer reviewStar;
	String reviewDate;
	String ceoReplies;
	String reviewCheck;
	String reviewImg;
	
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
	public String getReviewImg() {
		return reviewImg;
	}
	public void setReviewImg(String reviewImg) {
		this.reviewImg = reviewImg;
	}

	

}
