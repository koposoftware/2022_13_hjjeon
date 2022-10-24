package kr.ac.kopo.socket;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.codehaus.plexus.component.annotations.Component;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.google.gson.Gson;

import kr.ac.kopo.alarm.service.AlarmService;
import kr.ac.kopo.member.vo.MemberVO;


public class EchoHandler extends TextWebSocketHandler {
	private static final Logger logger = LoggerFactory.getLogger(WebSocketHandler.class);
	//로그인 한 인원 전체
	private List<WebSocketSession> sessions = new ArrayList<WebSocketSession>();
	// 1:1로 할 경우
	private Map<String, WebSocketSession> userSessionsMap = new HashMap<String, WebSocketSession>();
	
	@Autowired
	private AlarmService alarmService;
	
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {//클라이언트와 서버가 연결
		// TODO Auto-generated method stub
		logger.info("Socket 연결");
		sessions.add(session);
		logger.info(currentUserName(session));//현재 접속한 사람
		String senderId = currentUserName(session);
		userSessionsMap.put(senderId,session);
		System.out.println("userSessionMap = "+userSessionsMap);
	}
	
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {// 메시지
		// TODO Auto-generated method stub
		String msg = message.getPayload();//자바스크립트에서 넘어온 Msg
		/*List<List<HashMap<String, Object>>> alarm = new ArrayList<List<HashMap<String,Object>>>();
		for(String id : userSessionsMap.keySet() ) {
			System.out.println("userId = " + id );
			alarm.add(alarmService.getAlam(id));
		}
		System.out.println("alarm = " + alarm);
		int i = 0;
		if (StringUtils.hasText(msg)) {
			//WebSocketSession webSocketSession = userSessionsMap.get(msg);
			for(WebSocketSession webSocketSession : userSessionsMap.values()) {
				Gson gson = new Gson();
				TextMessage textMessage = new TextMessage(gson.toJson(alarm.get(i)));
				i += 1;
				System.out.println("textMessage = " + textMessage);
				webSocketSession.sendMessage(textMessage);
			}
			}*/
		if (StringUtils.hasText(msg)) {
			for(Map.Entry<String, WebSocketSession>  sessionMap :  userSessionsMap.entrySet()) {
				List<HashMap<String, Object>> alarmList =  alarmService.getAlam(sessionMap.getKey());
				Gson gson = new Gson();
				TextMessage textMessage = new TextMessage(gson.toJson(alarmList));
				WebSocketSession webSocketSession = sessionMap.getValue();
				webSocketSession.sendMessage(textMessage);
			}
		}
		}
	
	
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {//연결 해제
		// TODO Auto-generated method stub
		logger.info("Socket 끊음");
		sessions.remove(session);
		userSessionsMap.remove(currentUserName(session),session);
	}

	
	private String currentUserName(WebSocketSession session) {
		Map<String, Object> httpSession = session.getAttributes();
		MemberVO loginUser = (MemberVO)httpSession.get("loginVO");
		
		if(loginUser == null) {
			String mid = session.getId();
			return mid;
		}
		String mid = loginUser.getId();
		return mid;
		
	}
}
