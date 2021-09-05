package controller.myShop;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Model.OrderDTO;
import command.CompanyCommand;
import command.OrderCommand;
import command.ReviewCommand;
import service.myShop.ComNoticeService;
import service.myShop.LiveOrderService;
import service.myShop.MyShopComPhone;
import service.myShop.MyShopInfoModify;
import service.myShop.MyShopInfoService;
import service.myShop.MyShopSetService;
import service.myShop.ReviewService;

@Controller
@RequestMapping("myShop")
public class MyShopController {
	
	@Autowired
	MyShopSetService myShopSetService;
	@Autowired
	MyShopInfoService myShopInfoService;
	@Autowired
	MyShopComPhone myShopComPhone;
	@Autowired
	MyShopInfoModify myShopInfoModify;
	@Autowired
	ComNoticeService comNoticeService;
	@Autowired
	LiveOrderService liveOrderService;
	@Autowired
	ReviewService reviewService;
	
	
	//내가게메인
	@RequestMapping("main")
	public String myShopMain(HttpSession session, @RequestParam(value="comId")String comId) {
		myShopSetService.shopSet(session, comId);
		return "myShop/mainMyShop";
	}
	
	//실시간주문	
	@RequestMapping("liveOrder")
	public String liveOrderPage(Model model,HttpSession session) {
		liveOrderService.liveOrder(model,session);
		return "myShop/liveOrder";
	}
	
	//접수상태 변경
	@RequestMapping(value="liveOverStateUpdate")
	public String liveOverStateUpdate(@RequestParam(value="oderNum")String oderNum,@RequestParam(value="orderState")String orderState) {
		liveOrderService.liveOverStateUpdate(oderNum,orderState);
		return "redirect:liveOrder";
	}
	
	//접수,시간변경
	@RequestMapping(value="orderConfirm",method=RequestMethod.POST)
	public String orderUpdate(OrderCommand orderCommand) {
		liveOrderService.orderConfirm(orderCommand);
		return "redirect:liveOrder";
	}
	
	//주문목록
	@RequestMapping("shopOrderList")
	public String shopOrderList(Model model,HttpSession session) {
		liveOrderService.liveOrder(model, session);
		return "myShop/shopOrderList";
	}
	//기간별 조회
	@RequestMapping("orderDateList")
	public String orderDateList(@RequestParam(value="startDate") String startDate, 
			@RequestParam(value="endDate") String endDate, HttpSession session,Model model) {
		liveOrderService.orderDateList(session, startDate, endDate, model);
		return "myShop/shopOrderList";
	}
	
	//주문상세보기
	@RequestMapping("orderDetail")
	public String orderDetail(@RequestParam(value="orderNum")String orderNum,Model model) {
		liveOrderService.orderDetail(orderNum, model);
		return "myShop/orderDetail";
	}
	
	//주문상세보기 (거절내역만)
	@RequestMapping("orderReject")
	public String orderReject(Model model,HttpSession session) {
		liveOrderService.orderReject(model, session);
		return "myShop/shopOrderList";
	}
	
	//주문완료내역 조회
	@RequestMapping("orderDone")
	public String orderDone(Model model,HttpSession session) {
		liveOrderService.orderDone(model, session);
		return "myShop/shopOrderList";
	}
	
    //내가게정보
	@RequestMapping("myShopInfo")
	public String myShopInfo(CompanyCommand companyCommand,Model model) {
		myShopInfoService.myShopInfo(companyCommand, model);
		return "myShop/shopInfo";
	}
	
	@RequestMapping(value="shopUpdate", method = RequestMethod.POST)
	public String shopUpdate(CompanyCommand companyCommand) {
		myShopInfoModify.MyShopModify(companyCommand);
		return "redirect:/myShop/myShopInfo?comId="+companyCommand.getComId();
	}
	
	@RequestMapping("myShopInfoChange")
	public String myShopInfoChange(CompanyCommand companyCommand,Model model) {
		myShopInfoService.myShopInfo(companyCommand, model);
		return "myShop/myShopInfoChage";
	}
	
	//리뷰관리	
	@RequestMapping("reviewList")
	public String reViewList(Model model , HttpSession session) {
		reviewService.reviewList(model, session);
		return "myShop/reviewList";
	}
		
	//답글등록
	@RequestMapping(value="replyWrite", method = RequestMethod.POST)
	public String replyWrite(@RequestParam(value="orderNum")String orderNum,ReviewCommand reviewCommand) {
		reviewService.replyWrite(reviewCommand);
		return "redirect:/myShop/reviewList";
	}
		
	//리뷰기간별조회
	@RequestMapping(value="reviewDateList")
	public String reviewDateList(@RequestParam(value="startDate") String startDate, 
			@RequestParam(value="endDate") String endDate, HttpSession session,Model model) {
		reviewService.reviewDateList(session, startDate, endDate, model);
		return "myShop/reviewList";
	}
	
	//미답변 조회
	@RequestMapping("noReplies")
	public String noReplies(Model model , HttpSession session) {
		reviewService.noReplies(model, session);
		return "myShop/reviewList";
	}
	
	//전화번호등록	
	@RequestMapping("comPhone")
	public String comPhone(@ModelAttribute(value = "comId") String comId) {
		return "myShop/comNotice/comPhone";
	}
	
	@RequestMapping(value="comPhoneChange", method = RequestMethod.POST)
	public String comPhoneChange(CompanyCommand companyCommand) {
		myShopComPhone.comPhoneChange(companyCommand);
		return "redirect:/myShop/myShopInfo?comId="+companyCommand.getComId();
	}
	
	//업체공지사항등록
	@RequestMapping("comNotice")
	public String comNotice(@ModelAttribute(value="comId") String comId) {
		return "myShop/comNotice/comNotice";
	}
	
	//등록
	@RequestMapping(value="comNoticeEn", method = RequestMethod.POST)
	public String comNoticeEn(CompanyCommand companyCommand) {
		comNoticeService.comNoticeEn(companyCommand);
		return "redirect:/myShop/myShopInfo?comId=" + companyCommand.getComId();
	}
	
	//공지사항 수정페이지접근
	@RequestMapping("comNoticeChange")
	public String comNoticeChange(@ModelAttribute(value="comId") String comId) {
		return "myShop/comNotice/comNcg";
	}
	
	//수정
	@RequestMapping(value="comNcO", method = RequestMethod.POST)
	public String comNco(CompanyCommand companyCommand) {
		comNoticeService.comNco(companyCommand);
		return "redirect:/myShop/myShopInfo?comId="+companyCommand.getComId();
	}
	
	//공지사항확인
	@RequestMapping("comNoticeInfo")
	public String comNoticeInfo(CompanyCommand companyCommand, Model model) {
		myShopInfoService.myShopInfo(companyCommand, model);
		return "myShop/comNotice/comNoticeInfo";
	}
	
}
