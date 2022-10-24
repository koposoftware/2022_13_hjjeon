package kr.ac.kopo.building.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.account.service.AccountService;
import kr.ac.kopo.account.vo.AccountVO;
import kr.ac.kopo.bidaskbalance.service.BidAskBalanceService;
import kr.ac.kopo.bidaskbalance.vo.BidAskBalanceVO;
import kr.ac.kopo.building.service.BuildingService;
import kr.ac.kopo.building.vo.BuildingVO;
import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.property.vo.PropertyVO;
import kr.ac.kopo.tenant.vo.TenantVO;

@Controller
public class BuildingController {
	@Autowired
	private BuildingService buildingService;
	@Autowired
	private BidAskBalanceService bidAskBalanceService;
	@Autowired
	private AccountService accountService;
	
	@GetMapping("/building/detail")
	public String buildingDetail(@RequestParam("buildingNo") int buildingNo,@RequestParam("propertyNo") int propertyNo ,Model model,HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("loginVO");
		String userId;
		if(member == null) {
			userId = "";
		}else {
			userId = member.getId();
		}
		AccountVO account = accountService.selectAccountByUserId(userId);
		model.addAttribute("account",account);
		
		BuildingVO building = buildingService.selectByBuildingNo(buildingNo);
		building.setBuildingNo(buildingNo);
		model.addAttribute("building", building);
		
		PropertyVO property = buildingService.selectByPropertyNo(propertyNo, buildingNo);
		property.setPropertyNo(propertyNo);
		model.addAttribute("property", property);
		
		TenantVO tenant = buildingService.selectByTenantNo(propertyNo, buildingNo);
		model.addAttribute("tenant", tenant);
		
		List<BidAskBalanceVO> bidAskBalanceList =  bidAskBalanceService.selectByPropertyNo(propertyNo);
		model.addAttribute("bidAskBalanceList",bidAskBalanceList);
		
		return "/building/buildingDetail";
	}
	
	@ResponseBody
	@GetMapping("/property")
	public PropertyVO selectByFid(@RequestParam("fid") int fid) {
		PropertyVO property = buildingService.selectByFid(fid);
		
		return property;
		
	}
	
	@ResponseBody
	@GetMapping("building/getAcml")
	public HashMap<String, Object> getAcml(String propertyNo){
		HashMap<String, Object> acml  = buildingService.getAcml(propertyNo);
		if(acml != null) {
				
				return acml;
		}else {
			HashMap<String,Object> responseNull = new HashMap<String, Object>();
			responseNull.put("response", "false");
			return responseNull;
		}
		
	}
	
}











