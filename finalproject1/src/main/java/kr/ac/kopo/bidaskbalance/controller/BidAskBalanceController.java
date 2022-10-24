package kr.ac.kopo.bidaskbalance.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import kr.ac.kopo.bidaskbalance.service.BidAskBalanceService;
import kr.ac.kopo.bidaskbalance.vo.BidAskBalanceVO;

@RestController
public class BidAskBalanceController {
	
	@Autowired
	private BidAskBalanceService bidAskBalanceService;
	
	@GetMapping("/bidaskbalacne")
	public List<BidAskBalanceVO> selectByPropertyNo(@RequestParam("propertyNo") int propertyNo){
		List<BidAskBalanceVO> bidAskBalanceList = bidAskBalanceService.selectByPropertyNo(propertyNo);
		return bidAskBalanceList;
	}
}
