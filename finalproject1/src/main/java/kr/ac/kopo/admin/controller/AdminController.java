package kr.ac.kopo.admin.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.ac.kopo.admin.service.AdminService;
import kr.ac.kopo.disposal.service.DisposalService;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private DisposalService disposalService;
	
	@GetMapping("/admin")
	public String getIndex(Model model) {
		List<HashMap<String, Object>> propertyList = adminService.getPropertyInfo();
		model.addAttribute("propertyList", propertyList);
		List<HashMap<String, Object>> disposalProperty = adminService.getDisposalProperty();
		model.addAttribute("disposalProperty", disposalProperty);
		List<HashMap<String,Object>> customerList = adminService.getCustomerList();
		model.addAttribute("customerList", customerList);
		List<HashMap<String, Object>> subscriptionProperty = adminService.getSubscriptionProperty();
		model.addAttribute("subscriptionProperty", subscriptionProperty);
		List<HashMap<String, Object>> allPropertyList = adminService.getAllProperty();
		model.addAttribute("allPropertyList", allPropertyList);
		List<HashMap<String, Object>> completeDisposalList = disposalService.getCompleteDisposal();
		model.addAttribute("completeDisposalList", completeDisposalList);
		return "/admin/adminIndex";
	}
	@ResponseBody
	@GetMapping("/admin/getPropertyAnalyst")
	public List<HashMap<String, Object>> getPropertyAnalyst(String propertyNo){
		List<HashMap<String, Object>> propertyAnalyst = adminService.getPropertyAnalyst(propertyNo);
		return propertyAnalyst;
	}
	
	@ResponseBody
	@GetMapping("/admin/getPropertyAnalystWeek")
	public List<HashMap<String, Object>> getPropertyAnalystWeek(String propertyNo){
		List<HashMap<String, Object>> propertyAnalystWeek = adminService.getPropertyAnalystWeek(propertyNo);
		return propertyAnalystWeek;
	}
	
	@ResponseBody
	@PostMapping("/admin/insertProperty")
	public HashMap<String, String> insertProperty(@RequestParam HashMap<String, Object> insertInfo) {
		System.out.println(insertInfo);
		adminService.insertBuilding(insertInfo);
		adminService.insertProperty(insertInfo);
		adminService.insertTenant(insertInfo);
		HashMap<String, String> response = new HashMap<String, String>();
		response.put("response", "성공");
		return response;
	}
	
	@ResponseBody
	@PostMapping("admin/fileUpload")
	public void uploadFile(MultipartHttpServletRequest mtfRequest) {
		List<MultipartFile> fileList = mtfRequest.getFiles("buildingImage");
		String buildingNo = mtfRequest.getParameter("buildingNo");
		System.out.println(fileList);
		List<String> fileNameList = new ArrayList<String>();
		for(MultipartFile mf : fileList) {
			String originalFileName = mf.getOriginalFilename();
			fileNameList.add(originalFileName);
			System.out.println(originalFileName);
			String fullPath = "/Users/jun/Desktop/전형진/코포 데이터분석과/spring/spring-workspace/finalproject1/src/main/webapp/resources/images/detail/"+originalFileName;
			try {
				mf.transferTo(new java.io.File(fullPath));
				System.out.println("!!!");
			} catch (Exception e) {
				e.printStackTrace();
			}		
		}
		fileNameList.sort(Comparator.naturalOrder());
		System.out.println(fileNameList);  
		adminService.updateImageName(fileNameList,buildingNo);
	}
	@ResponseBody
	@GetMapping("/admin/orderList")
	public List<HashMap<String, Object>> getOrderList(Integer startNum,Integer endNum){
		List<HashMap<String, Object>> orderList = adminService.getOrderRecent(startNum, endNum);
		return orderList;
	}
	@ResponseBody
	@GetMapping("/admin/voteList")
	public List<HashMap<String, Object>> getVoteList(Integer startNum,Integer endNum){
		List<HashMap<String, Object>> orderList = adminService.getVoteProcessDetail(startNum, endNum);
		return orderList;
	}
	
	@ResponseBody
	@GetMapping("admin/mbtiRate")
	public List<HashMap<String, Object>> getMbtiRate(){
		List<HashMap<String, Object>> mbtiRate = adminService.getMbtiRate();
		return mbtiRate;
	}
	
	@ResponseBody
	@PostMapping("/admin/updateDisposal")
	public HashMap<String, String> updateDisposal(@RequestParam HashMap<String, Object> updateInfo){
		
		HashMap<String, String> response = new HashMap<String, String>();
		response.put("response", "성공");
		adminService.updateDisposal(updateInfo);
		return response;
	}
	
	@GetMapping("/admin/calendar")
	public String getCalendarPage() {
		
		return "/admin/calendar";
	}

}











