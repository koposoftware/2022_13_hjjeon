package kr.ac.kopo.roi.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import kr.ac.kopo.roi.service.RoiService;
import kr.ac.kopo.roi.vo.RoiVO;


@CrossOrigin(origins="*")
@RestController
public class RoiController {
	
	@Autowired
	private RoiService roiService;
	
	@PostMapping("/roi")
	public List<RoiVO> selectAll(@RequestParam("date1") String date1,@RequestParam("date2") String date2,@RequestParam("location") String location){
		
		List<RoiVO> list = roiService.selectAll(date1, date2, location);
		return list;
		
	}
	
	@GetMapping("/test")
	public String test() {
		System.out.println("test!!");
		return "redirect:/";
	}
	
}
