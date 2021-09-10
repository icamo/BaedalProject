package service.myShop;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.AuthInfoDTO;
import Model.DateDTO;
import Model.ReviewDTO;
import Model.StartEndPageDTO;
import controller.PageAction;
import repository.MyShopRepository;

public class ReviewService {
	@Autowired
	MyShopRepository myShopRepository;
	
	/*
	AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
	String comId = authInfo.getComId();
	List<ReviewDTO> list = myShopRepository.reviewList(comId);
	model.addAttribute("lists",list);
	*/
	
	//리뷰 가져오기
	public void reviewList(Integer page, Model model,HttpSession session) {
		ReviewDTO dto = new ReviewDTO();
		
		int limit = 2;
		int limitPage = 5;
		
		Long startRow = ((long)page -1 ) * limit +1;
		Long endRow = startRow + limit -1;
		
		StartEndPageDTO sep = new StartEndPageDTO();
		sep.setStartRow(startRow);
		sep.setEndRow(endRow);
		dto.setStartEndPageDTO(sep);
		
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		String comId = authInfo.getComId();
		dto.setComId(comId);
		List<ReviewDTO> list = myShopRepository.reviewList(dto);
		
		int count = myShopRepository.count(comId);
		model.addAttribute("lists",list);
		model.addAttribute("count", count);
		
		PageAction pageAction = new PageAction();
		pageAction.page(count, limit, page, limitPage, model, "reviewList");
	}
	
	//리뷰 정보
	public void reviewDetail(String orderNum,Model model) {
		ReviewDTO dto = myShopRepository.reviewDetail(orderNum);
		model.addAttribute("dto", dto);
	}
	
	//코멘트 작성
	public void replyWrite(String orderNum,String ceoreplies) {
		ReviewDTO dto = new ReviewDTO();
		dto.setOrderNum(orderNum);
		dto.setCeoreplies(ceoreplies);
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
