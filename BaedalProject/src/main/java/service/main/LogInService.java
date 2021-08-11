package service.main;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.validation.Errors;

import command.LogInCommand;
import model.AuthInfoDTO;
import repository.LogInRepository;

public class LogInService {
	@Autowired
	LogInRepository logInRepository;
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	
	public AuthInfoDTO logIn(LogInCommand logInCommand, Errors errors, HttpSession session) {
		String userId = logInCommand.getUserId();
		AuthInfoDTO authInfo = logInRepository.logIn(userId);
		if(authInfo == null) {
			errors.rejectValue("userId", "notId");
		} else {
			if(bCryptPasswordEncoder.matches(logInCommand.getUserPw(), authInfo.getUserPw())) {			
				session.setAttribute("authInfo", authInfo);
			} else {
				errors.rejectValue("userPw", "notPw");
			}
		}
		return authInfo;
	}
}
