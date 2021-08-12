package service.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import Model.AuthInfoDTO;
import Model.MemberDTO;
import command.MemberCommand;
import repository.MemberRepository;

public class CeoModifyService {
	@Autowired
	MemberRepository memberRepository;
	public void ceoModify(MemberCommand memberCommand,HttpSession session) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		String ceoId = authInfo.getUserId();
		MemberDTO dto = new MemberDTO();
		dto.setCeoPhone(memberCommand.getCeoPh());
		dto.setCeoEmail(memberCommand.getCeoEmail());
		dto.setCeoId(ceoId);
		memberRepository.ceoUpdate(dto);
	}
}
