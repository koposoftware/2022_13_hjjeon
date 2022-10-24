package kr.ac.kopo.mbti.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.mbti.service.MbtiService;

@Controller
public class MbtiController {
	@Autowired
	private MbtiService mbtiService;
	
	@GetMapping("/mbti/getMbtiPage")
	public String getMbtiPage() {
		
		return "/mbti/mbti";
	}
	
	@ResponseBody
	@PostMapping("/insertMbti")
	public HashMap<String, String> insertMbti(@RequestBody HashMap<String, String> mbit){
		System.out.println("mbti = "+mbit);
		mbtiService.insertMbti(mbit);
		
		HashMap<String, String> response = new HashMap<String, String>();
		response.put("response", "response");
		return response;
		
	}
	
	@ResponseBody
	@GetMapping("/getCustomerMbtiType")
	public List<HashMap<String, Object>> getCustomerMbtiType(String customerId){
		List<HashMap<String, Object>> customerMbtiType = mbtiService.getCustomerMbtiType(customerId);
		return customerMbtiType;
	}
	
}
