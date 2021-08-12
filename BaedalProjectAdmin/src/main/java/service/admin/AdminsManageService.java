package service.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;

import Model.AdminDTO;
import Model.AuthInfoDTO;
import command.AdminCommand;
import repository.AdminRepository;

public class AdminsManageService {
	
	@Autowired
	AdminRepository adminRepository;
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;

	public void getAdminsList(Model model) {
		List<AdminDTO> list = adminRepository.adminsList();
		model.addAttribute("lists", list);
	}

	public void getAdminDetail(String adminNum, Model model) {
		AdminDTO dto = adminRepository.adminDetail(adminNum);
		model.addAttribute("dto", dto);
	}

	public void delAdmin(String adminNum) {
		adminRepository.adminDel(adminNum);
	}

	public void getAdminDetail(HttpSession session, Model model) {
		AuthInfoDTO authInfo = (AuthInfoDTO) session.getAttribute("authInfo");
		AdminDTO dto = adminRepository.adminDetail(authInfo.getAdminNum());
		model.addAttribute("dto", dto);
	}

	public void modifyInfoCon(AdminCommand adminCommand, HttpSession session) {
		AuthInfoDTO authInfo = (AuthInfoDTO) session.getAttribute("authInfo");
		
		AdminDTO dto = new AdminDTO();
		dto.setAdminContact(adminCommand.getAdminContact());
		dto.setAdminDept(adminCommand.getAdminDept());
		dto.setAdminEmail(adminCommand.getAdminEmail());
		dto.setAdminJob(adminCommand.getAdminJob());
		dto.setAdminNum(authInfo.getAdminNum());
		
		adminRepository.myInfoModify(dto);
	}

	public String pwChange(AdminCommand adminCommand, HttpSession session, Errors errors) {
		AuthInfoDTO authInfo = (AuthInfoDTO) session.getAttribute("authInfo");
		String nowPw =adminRepository.adminPw(authInfo.getAdminNum());
		boolean pwCon=bCryptPasswordEncoder.matches(adminCommand.getOldPw(), nowPw);
		if(pwCon) {
			AdminDTO dto = new AdminDTO();
			dto.setAdminPw(bCryptPasswordEncoder.encode(adminCommand.getAdminPw()));
			dto.setAdminNum(authInfo.getAdminNum());
			adminRepository.pwChange(dto);
			return "redirect:myInfo";
		}else {
			errors.rejectValue("oldPw", "notPw");
			return "admin/modifyPw";
		}
	}

	public String adminLeave(AdminCommand adminCommand, HttpSession session, HttpServletRequest request) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		String adminPw = adminRepository.adminPw(authInfo.getAdminNum());
		boolean pwCon = bCryptPasswordEncoder.matches(adminCommand.getAdminPw(), adminPw);
		if(pwCon) {
			adminRepository.adminDel(authInfo.getAdminNum());
			session.invalidate();
			return "redirect:/";
		}
		else{ 
			request.setAttribute("pwFail", "비밀번호가 틀렸습니다.");
			return "admin/adminLeave";
		}
	}
	
	

}
