package service.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.ui.Model;

import command.MemberCommand;
import controller.MailService;
import controller.RandomPassword;
import model.MemberDTO;
import repository.MemberRepository;

public class MemberFindPwService {
	@Autowired
	MailService mailService;
	@Autowired
	MemberRepository memberRepository;
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	
	public void findPw(MemberCommand memberCommand, Model model) {
		String memId = memberCommand.getMemId();
		String memEmail = memberCommand.getMemEmail();
		MemberDTO dto = memberRepository.memDetail(memId);
		if(dto != null) {
			if(memEmail.equals(dto.getMemEmail())) {
				String pass = RandomPassword.getRamdomPassword(10);
				String encodePass = bCryptPasswordEncoder.encode(pass);
				dto.setMemPw(encodePass);
				memberRepository.memPwUpdate(dto);
				
				String subject = "저기요. 임시비밀번호 발송메일입니다.";
				String content = "<html><body>" + 
								 "안녕하세요. "+ dto.getMemId() + "님의 임시 비밀번호는 "
								 + pass + "입니다."
								 +"</body></html>";				
				try {
					mailService.sendMail(dto.getMemEmail(), content, subject);
				} catch (Exception e) {
					e.printStackTrace();
				}
				model.addAttribute("memEmail", "passEmail");	
				
			} else {
				model.addAttribute("memEmail", "errEmail");				
			}
		} 
		
		
		
		
	}
}
