package command;

import java.io.File;

public class EventCommand {
	
	String eventNum;
	String eventName;
	File eventImg;
	String eventUrl;
	
	
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
	public File getEventImg() {
		return eventImg;
	}
	public void setEventImg(File eventImg) {
		this.eventImg = eventImg;
	}
	public String getEventUrl() {
		return eventUrl;
	}
	public void setEventUrl(String eventUrl) {
		this.eventUrl = eventUrl;
	}
	
	
}
