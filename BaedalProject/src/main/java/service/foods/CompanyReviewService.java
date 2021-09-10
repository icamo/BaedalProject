package service.foods;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.ReviewDTO;
import repository.FoodsRepository;

public class CompanyReviewService {
	@Autowired
	FoodsRepository foodsRepository;
	
	public void comReview(String comId, Model model) {
		List<ReviewDTO> reviewList = foodsRepository.comDetailReview(comId);
		model.addAttribute("reviewList", reviewList);	
		
	}
}
