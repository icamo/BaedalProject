package command;

public class MemberCommand {
	String memId;
	String memPw;
	String memPwCon;
	String memNickName;
	String memEmail;
	String memPhone;
	String orderAddress;
	String newPw;
	String newPwCon;
		
	public boolean isMemPwEqualsMemPwCon() {
		return memPw.equals(memPwCon);
	}
	
	public boolean isNewPwEqualsNewPwCon() {
		return newPw.equals(newPwCon);
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemPw() {
		return memPw;
	}

	public void setMemPw(String memPw) {
		this.memPw = memPw;
	}

	public String getMemPwCon() {
		return memPwCon;
	}

	public void setMemPwCon(String memPwCon) {
		this.memPwCon = memPwCon;
	}

	public String getMemNickName() {
		return memNickName;
	}

	public void setMemNickName(String memNickName) {
		this.memNickName = memNickName;
	}

	public String getMemEmail() {
		return memEmail;
	}

	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}

	public String getMemPhone() {
		return memPhone;
	}

	public void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
	}

	public String getOrderAddress() {
		return orderAddress;
	}

	public void setOrderAddress(String orderAddress) {
		this.orderAddress = orderAddress;
	}

	public String getNewPw() {
		return newPw;
	}

	public void setNewPw(String newPw) {
		this.newPw = newPw;
	}

	public String getNewPwCon() {
		return newPwCon;
	}

	public void setNewPwCon(String newPwCon) {
		this.newPwCon = newPwCon;
	}
	
	
}
