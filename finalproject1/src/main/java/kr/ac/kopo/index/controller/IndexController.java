package kr.ac.kopo.index.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.ac.kopo.building.service.BuildingService;
import kr.ac.kopo.subscription.service.SubscriptionService;

@Controller
public class IndexController {
	
	@Autowired
	private SubscriptionService subscriptionService;
	@Autowired
	private BuildingService buildingService;
	
	@GetMapping("/")
	public String getIndexInfo(Model model) {
		System.out.println("!!!");
		List<HashMap<String, Object>> subscriptionList = subscriptionService.getSubscriptionList();
		model.addAttribute("subscriptionList", subscriptionList);
		List<HashMap<String, Object>> indexBuildingList = buildingService.getIndexBuilding();
		model.addAttribute("indexBuildingList", indexBuildingList);
		return "/index";
	}
	
}
