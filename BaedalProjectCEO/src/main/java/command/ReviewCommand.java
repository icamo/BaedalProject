package command;

import java.util.Date;

public class ReviewCommand {
	String ceoreplies; //답글
	String orderNum;
	Date startDate;
	Date endDate;
	
	

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}

	public String getCeoreplies() {
		return ceoreplies;
	}

	public void setCeoreplies(String ceoreplies) {
		this.ceoreplies = ceoreplies;
	}
	
}
