package model;

import java.util.Date;

public class MemNoticeDTO {
	
	String memNoticeNum;
	String memNoticeSub;
	String memNoticeContent;
	String memNoiceFile;
	Date memNoiceDate;
	String AdminsNum;
	
	
	public String getMemNoticeNum() {
		return memNoticeNum;
	}
	public void setMemNoticeNum(String memNoticeNum) {
		this.memNoticeNum = memNoticeNum;
	}
	public String getMemNoticeSub() {
		return memNoticeSub;
	}
	public void setMemNoticeSub(String memNoticeSub) {
		this.memNoticeSub = memNoticeSub;
	}
	public String getMemNoticeContent() {
		return memNoticeContent;
	}
	public void setMemNoticeContent(String memNoticeContent) {
		this.memNoticeContent = memNoticeContent;
	}
	public String getMemNoiceFile() {
		return memNoiceFile;
	}
	public void setMemNoiceFile(String memNoiceFile) {
		this.memNoiceFile = memNoiceFile;
	}
	public String getAdminsNum() {
		return AdminsNum;
	}
	public void setAdminsNum(String adminsNum) {
		AdminsNum = adminsNum;
	}
	public Date getMemNoiceDate() {
		return memNoiceDate;
	}
	public void setMemNoiceDate(Date memNoiceDate) {
		this.memNoiceDate = memNoiceDate;
	}
	
}
