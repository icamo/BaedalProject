package service.foods;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartFile;

import command.ReviewCommand;
import model.ReviewDTO;
import repository.BasketRepository;

public class ReviewService {
	@Autowired
	BasketRepository basketRepository;
	
	public void addReview(ReviewCommand reviewCommand, HttpSession session) {
		ReviewDTO dto = new ReviewDTO();
		dto.setCeoReplies(reviewCommand.getCeoReplies());
		dto.setOrderNum(reviewCommand.getOrderNum());
		dto.setReviewCheck(reviewCommand.getReviewCheck());
		dto.setReviewContent(reviewCommand.getReviewContent());
		dto.setReviewDate(reviewCommand.getReviewDate());
		dto.setReviewStar(reviewCommand.getReviewStar());
		if(!reviewCommand.getReviewImg().getOriginalFilename().isEmpty()) {
			MultipartFile mf = reviewCommand.getReviewImg();
			String original = mf.getOriginalFilename();
			/// 확장자
			String originalExt = original.substring(original.lastIndexOf("."));
			String store = UUID.randomUUID().toString().replace("-", "")
					     + originalExt;
			String realPath = session.getServletContext().getRealPath("WEB-INF/view/resources/asset/image/reviewImg");
					//"/Users/jaegu/git/baedal/BaedalProject/reviewImg";
			File f = new File(realPath + "/" + store);
			try{mf.transferTo(f);}catch(Exception e) {e.printStackTrace();}
			dto.setReviewImg(store);			
		}

		basketRepository.addReview(dto);
	}

}
