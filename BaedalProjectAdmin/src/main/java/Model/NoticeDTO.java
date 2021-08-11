package Model;

import java.util.Date;

public class NoticeDTO {

	String noticeNum;
	String noticeSub;
	String noticeContent;
	String noticeFile;
	Date noticeDate;
	String adminsNum;
	public String getNoticeNum() {
		return noticeNum;
	}
	public void setNoticeNum(String noticeNum) {
		this.noticeNum = noticeNum;
	}
	public String getNoticeSub() {
		return noticeSub;
	}
	public void setNoticeSub(String noticeSub) {
		this.noticeSub = noticeSub;
	}
	public String getNoticeContent() {
		return noticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	public String getNoticeFile() {
		return noticeFile;
	}
	public void setNoticeFile(String noticeFile) {
		this.noticeFile = noticeFile;
	}
	public Date getNoticeDate() {
		return noticeDate;
	}
	public void setNoticeDate(Date noticeDate) {
		this.noticeDate = noticeDate;
	}
	public String getAdminsNum() {
		return adminsNum;
	}
	public void setAdminsNum(String adminsNum) {
		this.adminsNum = adminsNum;
	}
	
	
	
}
