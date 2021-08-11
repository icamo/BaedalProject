package Model;

public class AuthInfoDTO {
	String userId;
	String userEmail;
	String grade;
	String ceoPw;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getCeoPw() {
		return ceoPw;
	}
	public void setUserPw(String ceoPw) {
		this.ceoPw = ceoPw;
	}
	
	
}
