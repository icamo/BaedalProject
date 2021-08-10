package service.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import Model.AdminDTO;
import command.AdminCommand;
import repository.AdminRepository;

public class AdminJoinService {
	
	@Autowired
	AdminRepository adminRepository;
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	
	public void adminInsert(AdminCommand adminCommand) {
		AdminDTO dto = new AdminDTO();
		dto.setAdminContact(adminCommand.getAdminContact());
		dto.setAdminDept(adminCommand.getAdminDept());
		dto.setAdminEmail(adminCommand.getAdminEmail());
		dto.setAdminId(adminCommand.getAdminId());
		dto.setAdminJob(adminCommand.getAdminJob());
		dto.setAdminNum(adminCommand.getAdminNum());
		dto.setAdminName(adminCommand.getAdminName());
		dto.setAdminPw(bCryptPasswordEncoder.encode(adminCommand.getAdminPw()));
		adminRepository.adminInsert(dto);
		
	}
}
