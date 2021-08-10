package controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("register")
public class MemberController {
	@RequestMapping("memRegist")
	public String memRegist() {
		return "member/memberForm";
	}
}
