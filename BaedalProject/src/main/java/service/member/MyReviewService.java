package service.member;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import controller.PageAction;
import model.AuthInfoDTO;
import model.OrderListDTO;
import model.ReviewDTO;
import model.StartEndPageDTO;
import repository.MemberRepository;

public class MyReviewService {
	@Autowired
	MemberRepository memberRepository;
	
	public void ReviewList(Model model,Integer page, HttpSession session) {
		ReviewDTO dto = new ReviewDTO();
		int limit = 2;
		int limitPage = 5;
		if(page != null) {
			Long startRow = ((long)page - 1) * limit ;
			Long endRow = startRow + limit -1;
			StartEndPageDTO sep = new StartEndPageDTO();
			sep.setStartRow(startRow);
			sep.setEndRow(endRow);
			dto.setStartEndPageDTO(sep);
		}
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		String memId = authInfo.getUserId();
		dto.setMemId(memId);
		List<ReviewDTO> ReviewList = memberRepository.ReviewList(dto);
		int count = memberRepository.count(memId);
		model.addAttribute("ReviewList", ReviewList);
		model.addAttribute("count", count);
		if(page != null) {
			PageAction pageAction = new PageAction();
			pageAction.page(count, limit, page, limitPage, model, "myReview");
		}
		
	}
	


}
