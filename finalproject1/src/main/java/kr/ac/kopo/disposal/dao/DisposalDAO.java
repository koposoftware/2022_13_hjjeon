package kr.ac.kopo.disposal.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DisposalDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<HashMap<String, Object>> selectDisposalProperty() {
		List<HashMap<String, Object>> disposalProperty = sqlSessionTemplate.selectList("disposal.dao.disposalDAO.selectDisposalProperty");
		return disposalProperty;
	}
	
	public List<HashMap<String, Object>> selectVoteProcess(String propertyNo) {
		System.out.println("dao propertyNo"+propertyNo);
		List<HashMap<String, Object>> voteProcess = sqlSessionTemplate.selectList("disposal.dao.disposalDAO.selectVoteProcess",propertyNo);
		return voteProcess;
	}
	
	public List<HashMap<String, Object>> selectDabsAmountByUserId(String userId){
		List<HashMap<String, Object>> dabsAmount = sqlSessionTemplate.selectList("disposal.dao.disposalDAO.selectDabsAmountByUserId",userId);
		return dabsAmount;
	}
	
	public void voteProcess(HashMap<String, Object> vote) {
		sqlSessionTemplate.insert("disposal.dao.disposalDAO.insertVote", vote);
	}
	
	public List<HashMap<String, Object>> selectCompleteDisposal(){
		List<HashMap<String, Object>> completeDisposal = sqlSessionTemplate.selectList("disposal.dao.disposalDAO.selectCompleteDisposal");
		return completeDisposal;
	}
	
	public List<HashMap<String, Object>> selectVoteState(String propertyNo){
		List<HashMap<String, Object>> voteState = sqlSessionTemplate.selectList("disposal.dao.disposalDAO.selectVoteState",propertyNo);
		return voteState;
				
	}
	
}
