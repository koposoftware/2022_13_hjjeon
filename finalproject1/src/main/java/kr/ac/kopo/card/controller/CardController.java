package kr.ac.kopo.card.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.card.service.CardService;
import kr.ac.kopo.member.service.MemberService;

@Controller
public class CardController {
	
	@Autowired
	private CardService cardService;
	@Autowired
	private MemberService memberService;
	
	@GetMapping("/card")
	public String getCardPage() {
		
		return "/card/card";
	}
	
	@ResponseBody
	@GetMapping("/card/getCardList")
	public List<HashMap<String, Object>> getCardList(String customerId){
		int customerIdNum2 = memberService.getCustomerIdNum2(customerId);
		List<HashMap<String, Object>> cardList = cardService.getCardList(customerIdNum2);
		return cardList;
	}
	
	@ResponseBody
	@PostMapping("/card/applyCard")
	public List<HashMap<String, Object>> getApplyCard(@RequestBody HashMap<String, Object> card){
		HashMap<String, Object> cardInfo = new HashMap<String, Object>();
		String cardNum1 = (String)card.get("cardNo1");
		String cardNum2 = (String)card.get("cardNo2");
		String customerId = (String)card.get("customerId");
		int customerIdNum2 = memberService.getCustomerIdNum2(customerId);
		cardInfo.put("cardNum1", cardNum1);
		cardInfo.put("cardNum2", cardNum2);
		cardInfo.put("customerIdNum2", customerIdNum2);
		List<HashMap<String, Object>> cardInfoList = cardService.getCardInfo(cardInfo);
		
		return cardInfoList;
		
	}
	
	@ResponseBody
	@GetMapping("/card/getBuildingPlus")
	public List<HashMap<String, Object>> getBuildingPlus(String locationCode){
		List<HashMap<String, Object>> buildingList = cardService.getBuildingPlus(locationCode);
		return buildingList;
	}
}





