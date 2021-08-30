package service.foods;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.AuthInfoDTO;
import model.LikeDTO;
import model.ShopDTO;
import repository.FoodsRepository;

public class CompanyDetailService {
	@Autowired
	FoodsRepository foodsRepository;
	
	public void comDetail(String comId, Model model, HttpSession session) {
		ShopDTO dto = foodsRepository.comDetail(comId);
		try {
			AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
			String memId = authInfo.getUserId();
			LikeDTO likeDTO = new LikeDTO();
			likeDTO.setComId(comId);
			likeDTO.setMemId(memId);
			int like = foodsRepository.comLike(likeDTO);
			System.out.println(like);
			if(like == 1) {
				dto.setComLike(true);
			} else {
				dto.setComLike(false);
			}
		} catch(Exception e) {
			
		}		
		model.addAttribute("dto", dto);
	}
	
}
