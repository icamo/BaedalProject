package Model;

import java.util.Date;

public class RecommandDTO {
	
	String recNum;
	String comId;
	Date reqDate;
	String recPay;
	Date apprv;
	
	
	public String getRecNum() {
		return recNum;
	}
	public void setRecNum(String recNum) {
		this.recNum = recNum;
	}
	public String getComId() {
		return comId;
	}
	public void setComId(String comId) {
		this.comId = comId;
	}
	public Date getReqDate() {
		return reqDate;
	}
	public void setReqDate(Date reqDate) {
		this.reqDate = reqDate;
	}
	public String getRecPay() {
		return recPay;
	}
	public void setRecPay(String recPay) {
		this.recPay = recPay;
	}
	public Date getApprv() {
		return apprv;
	}
	public void setApprv(Date apprv) {
		this.apprv = apprv;
	}
	
	
}
