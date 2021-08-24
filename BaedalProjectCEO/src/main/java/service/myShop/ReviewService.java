package service.myShop;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.AuthInfoDTO;
import Model.ReviewDTO;
import command.ReviewCommand;
import repository.MyShopRepository;

public class ReviewService {
	@Autowired
	MyShopRepository myShopRepository;
	
	public void reviewList(Model model,HttpSession session) {
		AuthInfoDTO authInfo = (AuthInfoDTO)session.getAttribute("authInfo");
		String comId = authInfo.getComId();
		List<ReviewDTO> list = myShopRepository.reviewList(comId);
		model.addAttribute("lists",list);
	}
	
	public void replyWrite(ReviewCommand reviewCommand) {
		ReviewDTO dto = new ReviewDTO();
		dto.setOrderNum(reviewCommand.getOrderNum());
		dto.setCeoreplies(reviewCommand.getCeoreplies());
		myShopRepository.replyWrite(dto);
	}
	
	public void reviewDateList() {
 
	}
}
