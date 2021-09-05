package service.foods;

import org.springframework.beans.factory.annotation.Autowired;

import command.ReviewCommand;
import model.ReviewDTO;
import repository.BasketRepository;

public class ReviewService {
	@Autowired
	BasketRepository basketRepository;
	
	public void addReview(ReviewCommand reviewCommand) {
		ReviewDTO dto = new ReviewDTO();
		dto.setCeoReplies(reviewCommand.getCeoReplies());
		dto.setOrderNum(reviewCommand.getOrderNum());
		dto.setReviewCheck(reviewCommand.getReviewCheck());
		dto.setReviewContent(reviewCommand.getReviewContent());
		dto.setReviewDate(reviewCommand.getReviewDate());
		dto.setReviewImg(reviewCommand.getReviewImg());
		dto.setReviewStar(reviewCommand.getReviewStar());
		basketRepository.addReview(dto);
	}

}
