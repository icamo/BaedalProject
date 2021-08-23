package command;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class CeoNoticeCommand {
   String CeoNoticeNum;
   String CeoNoticeSub;
   String CeoNoticeContent;
   String CeoNoticeFile;
   @DateTimeFormat(pattern = "yyyy-MM-dd")
   Date CeoNoticeDate;
   String AdminsNum;
   
	public String getCeoNoticeNum() {
		return CeoNoticeNum;
	}
	public void setCeoNoticeNum(String ceoNoticeNum) {
		CeoNoticeNum = ceoNoticeNum;
	}
	public String getCeoNoticeSub() {
		return CeoNoticeSub;
	}
	public void setCeoNoticeSub(String ceoNoticeSub) {
		CeoNoticeSub = ceoNoticeSub;
	}
	public String getCeoNoticeContent() {
		return CeoNoticeContent;
	}
	public void setCeoNoticeContent(String ceoNoticeContent) {
		CeoNoticeContent = ceoNoticeContent;
	}
	public String getCeoNoticeFile() {
		return CeoNoticeFile;
	}
	public void setCeoNoticeFile(String ceoNoticeFile) {
		CeoNoticeFile = ceoNoticeFile;
	}
	public Date getCeoNoticeDate() {
		return CeoNoticeDate;
	}
	public void setCeoNoticeDate(Date ceoNoticeDate) {
		CeoNoticeDate = ceoNoticeDate;
	}
	public String getAdminsNum() {
		return AdminsNum;
	}
	public void setAdminsNum(String adminsNum) {
		AdminsNum = adminsNum;
	}
	   
	   
}
