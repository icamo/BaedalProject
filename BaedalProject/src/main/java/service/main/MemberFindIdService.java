package service.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import command.MemberCommand;
import model.MemberDTO;
import repository.MemberRepository;

public class MemberFindIdService {
	@Autowired
	MemberRepository memberRepository;
	
	public void findId(MemberCommand memberCommand, Model model) {
		MemberDTO dto = new MemberDTO();
		dto.setMemEmail(memberCommand.getMemEmail());
		dto.setMemPhone(memberCommand.getMemPhone());
		String memId = memberRepository.findId(dto);
		model.addAttribute("memId", memId);
		
	}
}
