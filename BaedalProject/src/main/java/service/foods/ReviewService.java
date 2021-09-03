package service.foods;

import org.springframework.beans.factory.annotation.Autowired;
import model.ReviewDTO;
import repository.BasketRepository;

public class ReviewService {
	@Autowired
	BasketRepository basketRepository;
	
	public void addReview(ReviewDTO reviewDTO) {
		basketRepository.addReview(reviewDTO);
	}

}
