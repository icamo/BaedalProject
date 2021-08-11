package service.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import Model.MemberDTO;
import command.MemberCommand;
import repository.MemberRepository;

public class MemberJoinService {
	@Autowired
	MemberRepository memberRepository;
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;
	
	public void memJoin(MemberCommand memberCommand) {
		MemberDTO dto = new MemberDTO();
		dto.setCeoEmail(memberCommand.getCeoEmail());
		dto.setCeoId(memberCommand.getCeoId());
		dto.setCeoPhone(memberCommand.getCeoPh());
		System.out.println(memberCommand.getCeoPw());
		dto.setCeoPw(bcryptPasswordEncoder.encode(memberCommand.getCeoPw()));
		memberRepository.memJoin(dto);
	}
}
