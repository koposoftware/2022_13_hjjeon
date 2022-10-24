package kr.ac.kopo.bidaskbalance.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.bidaskbalance.dao.BidAskBalanceDAO;
import kr.ac.kopo.bidaskbalance.vo.BidAskBalanceVO;

@Service
public class BidAskBalanceService {
	@Autowired
	private BidAskBalanceDAO bidAskBalanceDAO;
	
	public List<BidAskBalanceVO> selectByPropertyNo(int propertyNo){
		List<BidAskBalanceVO> bidAskBalanceList = bidAskBalanceDAO.selectByPropertyNo(propertyNo);
		return bidAskBalanceList;
	}
}
