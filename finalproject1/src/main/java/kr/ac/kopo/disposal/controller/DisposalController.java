package kr.ac.kopo.disposal.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.disposal.service.DisposalService;
import kr.ac.kopo.member.vo.MemberVO;

@Controller
public class DisposalController {
	
	@Autowired
	private DisposalService disposalService;
	
	@GetMapping("/disposal")
	public String showDisposal(Model model,HttpServletRequest request) {
		List<HashMap<String, Object>> disposalProperty = disposalService.getDisposalProperty();
		System.out.println(disposalProperty);
		model.addAttribute("disposalProperty", disposalProperty);
		HttpSession session = request.getSession();
		MemberVO user = (MemberVO)session.getAttribute("loginVO");
		String userId = user.getId();
		List<HashMap<String, Object>> dabsAmount = disposalService.getDabsAmountByUserId(userId);
		model.addAttribute("dabsAmount", dabsAmount);
		List<HashMap<String, Object>> completeDisposal  = disposalService.getCompleteDisposal();
		model.addAttribute("completeDisposal", completeDisposal);
		return "disposal/disposal";
	}
	
	@ResponseBody
	@GetMapping("/disposal/getVoteProcess")
	public List<HashMap<String, Object>> getVoteProcess(@RequestParam("propertyNo") String propertyNo){
		System.out.println(propertyNo);
		List<HashMap<String, Object>> voteProcess = disposalService.getVoteProcess(propertyNo);
		return voteProcess;
	}
	
	@ResponseBody
	@PostMapping("/voteProcess")
	public Map<String, String> voteProcess(@RequestBody HashMap<String, Object> vote) {
		System.out.println(vote);
		disposalService.voteProcess(vote);
		Map<String, String> response  =  new HashMap<String, String>();
		response.put("res", "성공");
		return response;
	}
	
	@ResponseBody
	@GetMapping("/checkVoteState")
	public List<HashMap<String, Object>> getVoteState(@RequestParam("propertyNo") String propertyNo){
		List<HashMap<String, Object>> voteState = disposalService.getVoteState(propertyNo);
		return voteState;
	}
	
	
}










