package command;


import org.springframework.web.multipart.MultipartFile;

public class EventCommand {
	
	String eventNum;
	String eventName;
	MultipartFile eventImg;
	String eventUrl;
	
	
	
	public MultipartFile getEventImg() {
		return eventImg;
	}
	public void setEventImg(MultipartFile eventImg) {
		this.eventImg = eventImg;
	}
	public String getEventNum() {
		return eventNum;
	}
	public void setEventNum(String eventNum) {
		this.eventNum = eventNum;
	}
	public String getEventName() {
		return eventName;
	}
	public void setEventName(String eventName) {
		this.eventName = eventName;
	}
	public String getEventUrl() {
		return eventUrl;
	}
	public void setEventUrl(String eventUrl) {
		this.eventUrl = eventUrl;
	}
	
	
}
