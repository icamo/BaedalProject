package service.foods;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.AuthInfoDTO;
import model.LikeDTO;
import repository.FoodsRepository;

public class StoreLikeService {
	@Autowired
	FoodsRepository foodsRepository;
	
	public void storeLike(String comId, HttpSession session, Model model) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		String memId = authInfo.getUserId();
		LikeDTO dto = new LikeDTO();
		dto.setMemId(memId);
		dto.setComId(comId);
		int like = foodsRepository.comLike(dto);
		if(like == 1) {
			foodsRepository.storeLikeDel(dto);
			model.addAttribute("num", 0);
		} else {
			foodsRepository.storeLike(dto);
			model.addAttribute("num", 1);
		}		
	}
}
