package service.company;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.CompanyDTO;
import repository.CompanyRepository;

public class CompanyListService {
	@Autowired
	CompanyRepository companyRepository;
	public void comList(Model model, String ceoId) {
		CompanyDTO dto = new CompanyDTO();
		List<CompanyDTO> list = companyRepository.comList(dto);
		model.addAttribute("lists", list);
	}
}
