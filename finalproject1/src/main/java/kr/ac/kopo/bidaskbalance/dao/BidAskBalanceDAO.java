package kr.ac.kopo.bidaskbalance.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.bidaskbalance.vo.BidAskBalanceVO;

@Repository
public class BidAskBalanceDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<BidAskBalanceVO> selectByPropertyNo(int propertyNo){
		
		List<BidAskBalanceVO> bidAskBalanceList = sqlSessionTemplate.selectList("bidAskBalance.dao.bidAskBalanceDAO.selectByPropertyNo",propertyNo);
		
		return bidAskBalanceList;
	}
	
}
