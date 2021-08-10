package service.main;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.validation.Errors;

import Model.AuthInfoDTO;
import command.loginCommand;
import repository.LoginRepository;

public class AdminLoginService {

	@Autowired
	LoginRepository loginRepository;
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	
	public AuthInfoDTO idConfirm(String adminId) {
		AuthInfoDTO authInfo = loginRepository.login(adminId);
		return authInfo;
	}

	public AuthInfoDTO numConfirm(String adminNum) {
		AuthInfoDTO authInfo = loginRepository.login2(adminNum);
		return authInfo;
	}

	public AuthInfoDTO login(loginCommand loginCommand, Errors errors, HttpSession session) {
		
		String userId= loginCommand.getUserId();
		AuthInfoDTO authInfo = loginRepository.login(userId);
		if(authInfo==null) {
			errors.rejectValue("userId", "notId");
		}else {
			if(bCryptPasswordEncoder.matches(loginCommand.getUserPw(), authInfo.getAdminPw())) {
				session.setAttribute("authInfo", authInfo);
			}else {
				errors.rejectValue("userPw", "notPw");
			}
		}
		return authInfo;
	}

}
