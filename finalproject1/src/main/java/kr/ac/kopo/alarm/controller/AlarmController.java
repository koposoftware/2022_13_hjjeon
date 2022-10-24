package kr.ac.kopo.alarm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.alarm.service.AlarmService;

@Controller
public class AlarmController {
	
	@Autowired
	private AlarmService alarmService;
	
	@ResponseBody
	@GetMapping("/getAlarm")
	public List<HashMap<String, Object>> getAlarm(String customerId, Model model){
		List<HashMap<String, Object>> alarm = alarmService.getAlam(customerId);
		model.addAttribute("alarmList", alarm);
		return alarm;
	}
	
	@ResponseBody
	@GetMapping("/alarm/changeReadState")
	public Map<String, String> changeReadState(String alarmNo) {
		System.out.println(alarmNo);
		Map<String, String> response = new HashMap<>();
		alarmService.changeReadState(alarmNo);
		response.put("response", "성공");
		return response;
		
	}
	
	
}
