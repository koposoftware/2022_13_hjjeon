package kr.ac.kopo.account.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ac.kopo.account.service.AccountService;
import kr.ac.kopo.account.vo.AccountVO;
import kr.ac.kopo.building.vo.BuildingVO;
import kr.ac.kopo.dabs.service.DabsService;
import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.orders.vo.OrdersVO;

@Controller
public class AccountController {

		@Autowired
		private AccountService accountService;
		@Autowired
		private DabsService dabsService;
	
		@GetMapping("/account/applyForm")
		public String applyFrom(@Valid MemberVO member,Model model,RedirectAttributes redirectAttributes) {
			 return "account/applyForm";
		 }
		
		@GetMapping("/account/signForm")
		public String signForm(@Valid MemberVO member,Model model,RedirectAttributes redirectAttributes) {
			return "account/signForm";
		}
		
		@GetMapping("/account/confirmForm")
		public String confirmForm(@Valid MemberVO member,Model model,RedirectAttributes redirectAttributes) {
			return "account/confirmForm";
		}
		
		@PostMapping("/account/accountComplete")
		public String completeAccount(@Valid AccountVO account,HttpSession session, @RequestParam("id") String id) {
			
			account.setUserId(id);
			account.setAccountNumber(accountService.makeAccountNumber(id));
			accountService.insertAccount(account);
			
			return "account/accountComplete";
		}
		
		@PostMapping("/account/myAsset")
		public String myAsset(String userId, Model model) {
			AccountVO account = accountService.selectAccountByUserId(userId);
			model.addAttribute("account", account);
			List<HashMap<String, Integer>> sumDabsPirceList = new ArrayList<>();
			sumDabsPirceList  = dabsService.getSumDabsPrice(userId);
			System.out.println(sumDabsPirceList);
			int sumDabsPrice= 0;
			for(int i = 0; i < sumDabsPirceList.size(); i++) {
				sumDabsPrice += Integer.parseInt(String.valueOf(sumDabsPirceList.get(i).get("SUMDABSPRICE")));
			}
			
			model.addAttribute("sumDabsPrice", sumDabsPrice);
			model.addAttribute("sumDabsPriceList", sumDabsPirceList);
			return "account/myAsset";
		}
		
		@ResponseBody
		@PostMapping("/account/getBalance")
		public AccountVO ordersProcess(@RequestBody MemberVO member) {
			String userId = member.getId();
			AccountVO account = accountService.selectAccountByUserId(userId);
			System.out.println("account = " + account);
			return account;
		}
		
		@ResponseBody
		@GetMapping("/account/getBuildingInfo")
		public List<HashMap<String, String>> getBuildingInfoByPropertyNo(@RequestParam("propertyNo") String propertyNo){
			System.out.println(propertyNo);
			List<HashMap<String, String>> buildingInfo = new ArrayList<HashMap<String,String>>();
			buildingInfo = dabsService.getBuildingInfoByPropertyNo(propertyNo);
			return buildingInfo;
		}
		
		@GetMapping("/account/userAuth")
		public String userAuth() {
			return "/account/userAuth";
		}
		
		@ResponseBody
		@GetMapping("/account/sendPhoneAuth")
		public String sendPhoneAuth(String phoneNumber) {
			int randomNumber = (int)(Math.random()*(9999 - 1000 +1) + 1000);
			accountService.sendPhoneAuth(phoneNumber, randomNumber);
			
			return Integer.toString(randomNumber);
		}
		
		
		
		@ResponseBody
		@PostMapping("/uploadfile")
		public String fileUpload(@RequestParam("file1") MultipartFile file, Model model,HttpSession session) 
				throws IllegalStateException, IOException {
			System.out.println(file);
			MemberVO member = (MemberVO)session.getAttribute("member");
			System.out.println("member = "+member);
			 if(!file.isEmpty()) {
			//String fullPath = "C:/Lecture/workspace/final_project_mzhana-main/src/main/webapp/resources/file/"+file.getOriginalFilename();
			String fullPath = "/Users/jun/Desktop/전형진/코포 데이터분석과/spring/spring-workspace/finalproject1/src/main/webapp/resources/file/"+file.getOriginalFilename();
			file.transferTo(new File(fullPath));
			
			String fileOCR = accountService.fileOCR(file.getOriginalFilename());
			System.out.println(fileOCR);
			//String idNum = accountService.getCustomerId(member.getId());
			//System.out.println(idNum);
			//System.out.println(fileOCR);
			//model.addAttribute("fileOCR", fileOCR);
//			if(fileOCR.contains(idNum)) {
//			}
			return fileOCR;
			
		}
		
		return "fail";
}
		@ResponseBody
		@GetMapping("checkIdNum")
		public HashMap<String, String> checkIdNum(HttpSession session) {
			
			MemberVO member = (MemberVO)session.getAttribute("loginVO");
			String idNum = accountService.getCustomerId(member.getId());
			HashMap<String, String> response = new HashMap<String, String>();
			response.put("idNum", idNum);
			return response;
		}
		
		@ResponseBody
		@PostMapping("account/checkAccount")
		public boolean checkAccount(@RequestBody HashMap<String, Object> userInfo){
			System.out.println(userInfo);
			HashMap<String, Object> account = accountService.checkAccount(userInfo);
			if (account != null) {
				return true;
			}
			return false;
		}
		
	
}


