package controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("edit")
public class MemberMyPageController {
	@RequestMapping("memMyPage")
	public String myPage() {
		return "member/memMyPage";
	}
}
