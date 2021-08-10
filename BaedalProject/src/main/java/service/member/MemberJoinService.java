package service.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import command.MemberCommand;
import model.MemberDTO;
import repository.MemberRepository;

public class MemberJoinService {
	@Autowired
	MemberRepository memberRepository;
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	
	public void memJoin(MemberCommand memberCommand) {
		MemberDTO dto = new MemberDTO();
		dto.setMemEmail(memberCommand.getMemEmail());
		dto.setMemId(memberCommand.getMemId());
		dto.setMemNickName(memberCommand.getMemNickName());
		dto.setMemPhone(memberCommand.getMemPhone());
		dto.setMemPw(bCryptPasswordEncoder.encode(memberCommand.getMemPw()));
		memberRepository.memJoin(dto);
		
	}
}
