package kr.ac.kopo.member.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ac.kopo.member.service.MailSendService;
import kr.ac.kopo.member.service.MemberService;
import kr.ac.kopo.member.vo.MemberVO;

@SessionAttributes("loginVO")
@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	@Autowired
	private MailSendService mailService;
	
	@PostMapping("/member/login")
	public String loginPost(@Valid MemberVO member,Model model) {
	
		MemberVO authMember = memberService.selectUser(member);
		if(authMember == null) {
			model.addAttribute("loginMsg","id와 password가 유효하지 않습니다.");
			return "redirect:/";
		}else {
			model.addAttribute("loginVO", authMember);			
			return "redirect:/";
		}
		
	}
	
	@GetMapping("/member/logout")
	public String logout(SessionStatus sessionStatus,HttpSession session) {
		sessionStatus.setComplete();
		session.invalidate();
		return "redirect:/";
	}
	
	@GetMapping("/member/mailAuth")
	public String mailAuth() {
		
		return "member/mailAuth";
	}


	@GetMapping("/member/mailCheck")
	@ResponseBody()
	public String mailcheck(@RequestParam("email") String email) {
		System.out.println(email);
		return mailService.joinEmail(email);
	}
	
	@PostMapping("/member/userRegisterForm")
	public String userRegisterForm(@Valid MemberVO member,Model model) {
		model.addAttribute("member", member);
		System.out.println(member);
		
		
		return "member/userRegisterForm";
	}
	
	@PostMapping("/member/userRegister")
	public String userRegister(@Valid MemberVO member,Model model,String basicAddress,String detailAddress,HttpSession session) {
		System.out.println(basicAddress+detailAddress);
		member.setAddress(basicAddress+detailAddress);
		memberService.insertUser(member);
		session.setAttribute("member", member);
		return "account/applyForm";
	}
	
	
}