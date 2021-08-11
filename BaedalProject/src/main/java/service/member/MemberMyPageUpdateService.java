package service.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import command.MemberCommand;
import model.AuthInfoDTO;
import model.MemberDTO;
import repository.MemberRepository;

public class MemberMyPageUpdateService {
	@Autowired
	MemberRepository memberRepository;
	
	public void memUpdate(MemberCommand memberCommand, HttpSession session) {
		MemberDTO dto = new MemberDTO();
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		
		dto.setMemId(authInfo.getUserId());
		dto.setMemEmail(memberCommand.getMemEmail());
		dto.setMemNickName(memberCommand.getMemNickName());
		dto.setMemPhone(memberCommand.getMemPhone());
		memberRepository.memUpdate(dto);
	}
}
