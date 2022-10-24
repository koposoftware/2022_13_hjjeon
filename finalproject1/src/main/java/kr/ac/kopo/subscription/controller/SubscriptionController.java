package kr.ac.kopo.subscription.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.subscription.service.SubscriptionService;

@Controller
public class SubscriptionController {
	@Autowired
	private SubscriptionService subscriptionService;
	
	@ResponseBody
	@GetMapping("/getSubscriptionProperty")
	public List<HashMap<String, Object>> getSubscriptionProperty(@RequestParam("propertyNo") String propertyNo){
		System.out.println(propertyNo);
		List<HashMap<String, Object>> subscriptionProperty = subscriptionService.getSubscriptionProperty(propertyNo);
		return subscriptionProperty;
	}
	
	@ResponseBody
	@PostMapping("/subscriptionProcess")
	public HashMap<String, String> subscriptionProcess(@RequestBody HashMap<String, Object> subscriptionMap) {
		subscriptionService.subscriptionProcess(subscriptionMap);
		HashMap<String, String> response = new HashMap<String, String>();
		response.put("response", "response");
		return response;
	}
	
	@ResponseBody
	@GetMapping("/getSubscriptionAmount")
	public List<HashMap<String, Object>> getSubscriptionAmount(String property){
			List<HashMap<String, Object>> subscriptionAmount = subscriptionService.getSubscriptionAmount(property);
			return subscriptionAmount;
	}
	
}







