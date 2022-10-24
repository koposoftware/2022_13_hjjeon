package kr.ac.kopo.member.service;

import java.util.Random;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service
public class MailSendService {
	
	@Autowired
	private JavaMailSenderImpl mailSender;
	
	private int authNumber;
	
	public int makeRandomNum() {
		Random r = new Random();
		int checkNum = r.nextInt(888888)+11111;
		System.out.println("인증번호 : " + checkNum);
		return checkNum;
	}
	
	public void mailSend(String setForm,String toMail,String title,String content) {
		MimeMessage message = mailSender.createMimeMessage();
		try {
			MimeMessageHelper helper = new MimeMessageHelper(message,true,"utf-8");
			helper.setFrom(setForm);
			helper.setTo(toMail);
			helper.setSubject(title);
			
			helper.setText(content,true);
			mailSender.send(message);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public String joinEmail(String email) {
		int authNum = makeRandomNum();
		String setForm = "gudwls970412@gmail.com";
		String toMail = email;
		String title="하나랜드 회원 가입 인증 이메일 입니다.";
		
		String content = 
				"홈페이지를 방문해주셔서 감사합니다." + 	//html 형식으로 작성 ! 
                "<br><br>" + 
			    "인증 번호는 " + authNum + "입니다." + 
			    "<br>" + 
			    "해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
		mailSend(setForm, toMail, title, content);
		return Integer.toString(authNum);
	}
}









