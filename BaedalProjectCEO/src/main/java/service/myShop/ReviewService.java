package service.myShop;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.AuthInfoDTO;
import Model.DateDTO;
import Model.ReviewDTO;
import command.ReviewCommand;
import repository.MyShopRepository;

public class ReviewService {
	@Autowired
	MyShopRepository myShopRepository;
	
	//리뷰 가져오기
	public void reviewList(Model model,HttpSession session) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		String comId = authInfo.getComId();
		List<ReviewDTO> list = myShopRepository.reviewList(comId);
		model.addAttribute("lists",list);
	}
	
	//리뷰 정보
	public void reviewDetail(String orderNum,Model model) {
		ReviewDTO dto = myShopRepository.reviewDetail(orderNum);
		model.addAttribute("dto", dto);
	}
	
	//코멘트 작성
	public void replyWrite(ReviewCommand reviewCommand) {
		ReviewDTO dto = new ReviewDTO();
		dto.setOrderNum(reviewCommand.getOrderNum());
		dto.setCeoreplies(reviewCommand.getCeoreplies());
		System.out.println("테스트" + dto.getCeoreplies());
		myShopRepository.replyWrite(dto);
	}
	
	//기간별 조회
	public void reviewDateList(HttpSession session,String startDate,String endDate,Model model) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		String comId = authInfo.getComId();	
		DateDTO dto = new DateDTO();
		dto.setComId(comId);
		dto.setStartDate(startDate);
		dto.setEndDate(endDate);
		List<ReviewDTO> list = myShopRepository.reviewDateList(dto);
		model.addAttribute("lists",list);
	}
	
	//미답변 조회
	public void noReplies(Model model,HttpSession session) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		String comId = authInfo.getComId();
		List<ReviewDTO> list = myShopRepository.noReplies(comId);
		model.addAttribute("lists",list);
	}
}
