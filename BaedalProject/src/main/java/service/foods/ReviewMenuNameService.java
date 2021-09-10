package service.foods;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.MenuInfoDTO;
import model.ReviewDetailDTO;
import repository.FoodsRepository;

public class ReviewMenuNameService {
	@Autowired
	FoodsRepository foodsRepository;
	
	public void reviewMenuName(String comId,HttpSession session,Model model) {
		List<MenuInfoDTO> dto = 
				foodsRepository.reviewMenuName(comId);
		model.addAttribute("reviewMenuName",dto);
	}

	

}
