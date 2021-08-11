package service.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import Model.AuthInfoDTO;
import Model.MemberDTO;
import command.MemberCommand;
import repository.MemberRepository;

public class MemberModifyService {
	@Autowired
	MemberRepository memberRepository;
	public void memberModify(MemberCommand memberCommand,HttpSession session) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		String ceoId = authInfo.getUserId();
		MemberDTO dto = new MemberDTO();
		dto.setCeoEmail(memberCommand.getCeoEmail());
		dto.setCeoPhone(memberCommand.getCeoPh());
	}
}
