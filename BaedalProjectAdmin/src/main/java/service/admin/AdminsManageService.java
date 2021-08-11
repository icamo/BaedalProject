package service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.AdminDTO;
import repository.AdminRepository;

public class AdminsManageService {
	
	@Autowired
	AdminRepository adminRepository;

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

}
