package service.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import Model.AuthInfoDTO;
import Model.MemberDTO;
import command.MemberCommand;
import repository.MemberRepository;

public class EmailModifyService {
	@Autowired
	MemberRepository memberRepository;
	public void emailModify(MemberCommand memberCommand,HttpSession session) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		String ceoId = authInfo.getUserId();
		MemberDTO dto = new MemberDTO();
		dto.setCeoEmail(memberCommand.getCeoEmail());
		dto.setCeoId(ceoId);
		memberRepository.emailUpdate(dto);
	}
}
