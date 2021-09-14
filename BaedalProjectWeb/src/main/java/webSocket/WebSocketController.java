package webSocket;

import java.io.IOException;
import java.util.HashMap;
import java.util.Set;

import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import oracle.jdbc.proxy.annotation.OnError;


@Component
@ServerEndpoint(value="/chat/{userId}")
public class WebSocketController {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	//왜 static 으로 만들었을까?
	static HashMap<String, Session> userList = new HashMap<String, Session>();
	
	//서버 접속시
	@OnOpen
	public void onOpen(Session session, @PathParam("userId") String id) {
		//@PathParam 은 웹소켓에서 사용하는 @PathVariables		
		//1. userId 가 중복되는지 확인
		System.out.println("web socket");
		if(userList.get(id) != null) {
			logger.info("중복 발생");	
			sendMsg(session,"사용중인 아이디 입니다.");
		}else{//중복이 아닐 경우
			logger.info("중복 아님");
			userList.put(id, session);
			broadCast(id+"님이 접속 하였습니다.   현재 접속자 수 : "+userList.size());
		}	
	}

	//서버 종료시
	@OnClose
	public void onClose(Session session) {			
		String val = session.getId();//종료한 sessionId 확인
		
		Set<String>keys =  userList.keySet();
		for(String key : keys) {		
			if(val.equals(userList.get(key).getId())) {
				logger.info("종료하려는 userId : "+key);
				userList.remove(key, session);
				logger.info("현재 접속자 : "+userList.size());
				broadCast(key+"님께서 나가셨습니다.    현재 접속자("+userList.size()+")");
			}
		}	
		
	}
	
	//메시지 수신시
	@OnMessage
	public void onMessage(String msg, Session session) {
		
		System.out.println("msg :" + msg);
		broadCast(msg);
	}
	
	//에러 발생시
	@OnError
	public void onError(Session session, Throwable e) {
		logger.info("문제 세션 : "+ session);
		System.out.println(e.toString());
	}
	
	//메시지 전체 전송
	WebOrderService webOrderService = new WebOrderService();

	private void broadCast(String text) {
		System.out.println(text);
		String str[] = text.split(",");
		System.out.println(str[0]);
		OrderMenuInfoDTO dto = webOrderService.orderDetail(str[0]);
		String html = "";
		if (dto != null) {
			html += "<h2>실시간 주문확인</h2>";
			html += "<table>";
			html += "<tr><td>주문번호</td><td>" + dto.getOrderDTO().getOrderNum() + "</td></tr>";
			html += "<tr><td>회원아이디</td><td>" + dto.getOrderDTO().getMemId() + "</td></tr>";
			html += "<tr><td>주문일시</td><td>" + dto.getOrderDTO().getOrderDate() + "</td></tr>";
			html += "<tr><td>결제방법</td><td>" + dto.getOrderDTO().getMethodsPayment() + "</td></tr>";
			html += "<tr><td>주문접수여부</td><td>";
			html += "<select id='orderResult'>";
			html += "<option>주문접수</option>";
			html += "<option>주문거절</option>";
			html += "</select></td></tr>";
			html += "<tr><td>예상소요시간</td><td><select id='orderSituation'>";
			html += "<optgroup label='예상 소요시간을 선택해주세요'>";
			html += "<option>약 10분 이내 도착예정입니다.</option>";
			html += "<option>약 20분 이내 도착예정입니다.</option>";
			html += "<option>약 30분 이내 도착예정입니다.</option>";
			html += "<option>약 40분 이내 도착예정입니다.</option>";
			html += "<option>약 50분 이내 도착예정입니다.</option>";
			html += "<option>약 1시간 이내 도착예정입니다.</option>";
			html += "<option>약 1시간 30분 이내 도착예정입니다.</option>";
			html += "<option>약 2시간 이내 도착예정입니다.</option>";
			html += "</select></td></tr>";
			html += "<tr><td>주문주소</td><td>" + dto.getOrderDTO().getOrderAddress() + "</td></tr>";
			html += "<tr><td>요청사항</td><td>" + dto.getOrderDTO().getOrderRequest() + "</td></tr>";
			for (MenuInfoDTO d : dto.getMenuInfos()) {
				html += "<tr><td>주문정보</td><td>" + d.getMenuName() + " , " + d.getMenuPrice() + "원, " + d.getMenuCount()
						+ "개 </td></tr>";
			}
			html += "<tr><td>주문상태</td><td>" + dto.getOrderDTO().getOrderState() + "</td></tr>";
			html += "<tr><td>총가격</td><td>" + dto.getOrderDTO().getTotalPrice() + "</td></tr>";
			html += "</table>";
			html += "<button type='button' onclick=\"orderConfirm('"+dto.getOrderDTO().getOrderNum()+"');\">접수상태 변경</button>";
					
			System.out.println(html);
			logger.info("전달 대상 : " + userList.size());
			Set<String> keys = userList.keySet();
			try {
				for (String key : keys) {
					logger.info("key : " + key);
					if (key.equals(str[1])) {
						Session session = userList.get(key);
						session.getBasicRemote().sendText(html);
					}
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

	}
	
	//한명에게 메시지 전달
	private void sendMsg(Session session, String msg) {
		try {
			session.getBasicRemote().sendText(msg);
		} catch (IOException e) {	
			e.printStackTrace();
		}
	}
	

}
