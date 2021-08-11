package command;

import org.springframework.web.multipart.MultipartFile;

public class NoticeCommand {
	
	String noticeSub;
	String noticeCon;
	MultipartFile [] noticeFile;
	
	
	public String getNoticeSub() {
		return noticeSub;
	}
	public void setNoticeSub(String noticeSub) {
		this.noticeSub = noticeSub;
	}
	public String getNoticeCon() {
		return noticeCon;
	}
	public void setNoticeCon(String noticeCon) {
		this.noticeCon = noticeCon;
	}
	public MultipartFile[] getNoticeFile() {
		return noticeFile;
	}
	public void setNoticeFile(MultipartFile[] noticeFile) {
		this.noticeFile = noticeFile;
	}
	
	
}
