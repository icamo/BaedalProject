package service.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.ui.Model;

import Model.AuthInfoDTO;
import Model.MemberDTO;
import repository.MemberRepository;

public class MemberPwConfirmService {
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	@Autowired
	MemberRepository memberRepository;
	public String ceoPw(String ceoPw,HttpSession session,Model model) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		MemberDTO dto = memberRepository.memInfo(authInfo.getUserId());
		if(bCryptPasswordEncoder.matches(ceoPw,dto.getCeoPw())) {
			return "myInfo/pwChangeOk";
		}else {
			model.addAttribute("pwFail1", "비밀번호가 틀립니다");
			return "myInfo/pwChang";
		}
	}
}
