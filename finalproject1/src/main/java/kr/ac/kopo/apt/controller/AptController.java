package kr.ac.kopo.apt.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.apt.service.AptService;

@Controller
public class AptController {
	@Autowired
	private AptService aptService;
	
	@ResponseBody
	@PostMapping("/apt/getAptPrice1")
	public List<HashMap<String, Object>> getAptPrice1(String location){
		List<HashMap<String, Object>> aptPrice = aptService.getAptPrice1(location);
		return aptPrice;
	}
	
	@ResponseBody
	@PostMapping("/apt/getAptPrice2")
	public List<HashMap<String, Object>> getAptPrice2(String location){
		List<HashMap<String, Object>> aptPrice = aptService.getAptPrice2(location);
		return aptPrice;
	}
	
	@ResponseBody
	@PostMapping("/apt/getAptPrice3")
	public List<HashMap<String, Object>> getAptPrice3(String location){
		List<HashMap<String, Object>> aptPrice = aptService.getAptPrice3(location);
		return aptPrice;
	}
}
