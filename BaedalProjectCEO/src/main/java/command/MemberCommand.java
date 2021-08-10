package command;

public class MemberCommand {
	String ceoId;
	String ceoPw;
	String ceoPwCon;
	String ceoEmail;
	String ceoPh;
	
	public Boolean isMemPwEqualsMemPwCon() {
		return ceoPw.equals(ceoPwCon);
	}
	
	public String getCeoId() {
		return ceoId;
	}
	public void setCeoId(String ceoId) {
		this.ceoId = ceoId;
	}
	public String getCeoPw() {
		return ceoPw;
	}
	public void setCeoPw(String ceoPw) {
		this.ceoPw = ceoPw;
	}
	public String getCeoPwCon() {
		return ceoPwCon;
	}
	public void setCeoPwCon(String ceoPwCon) {
		this.ceoPwCon = ceoPwCon;
	}
	public String getCeoEmail() {
		return ceoEmail;
	}
	public void setCeoEmail(String ceoEmail) {
		this.ceoEmail = ceoEmail;
	}
	public String getCeoPh() {
		return ceoPh;
	}
	public void setCeoPh(String ceoPh) {
		this.ceoPh = ceoPh;
	}
	
	
	
}
