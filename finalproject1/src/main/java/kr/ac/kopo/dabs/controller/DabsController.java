package kr.ac.kopo.dabs.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.dabs.service.DabsService;

@Controller
public class DabsController {
	@Autowired
	private DabsService dabsService;
	
	@ResponseBody
	@PostMapping("/dabs/getDabsCnt")
	public HashMap<String, Object> getDabsCnt(@RequestBody HashMap<String, String> hashInfo){
		
		HashMap<String, Object> dabsCnt = dabsService.getDabsCnt(hashInfo);
		
		return dabsCnt;
	}
	
}
