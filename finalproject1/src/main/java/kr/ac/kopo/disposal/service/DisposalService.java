package kr.ac.kopo.disposal.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.disposal.dao.DisposalDAO;

@Service
public class DisposalService {
	
	@Autowired
	private DisposalDAO disposalDAO;
	
	public List<HashMap<String, Object>> getDisposalProperty(){
		List<HashMap<String, Object>> disposalProperty = disposalDAO.selectDisposalProperty();
		return disposalProperty;
	}
	
	public List<HashMap<String, Object>> getVoteProcess(String propertyNo){
		List<HashMap<String, Object>> voteProcess = disposalDAO.selectVoteProcess(propertyNo);
		return voteProcess;
	}
	
	public List<HashMap<String, Object>> getDabsAmountByUserId(String userId){
		List<HashMap<String, Object>> dabsAmount = disposalDAO.selectDabsAmountByUserId(userId);
		return dabsAmount;
	}
	
	public List<HashMap<String, Object>> getCompleteDisposal(){
		List<HashMap<String, Object>> completeDisposal = disposalDAO.selectCompleteDisposal();
		return completeDisposal;
	}
	
	public void voteProcess(HashMap<String, Object> vote) {
		disposalDAO.voteProcess(vote);
	}
	
	public List<HashMap<String, Object>> getVoteState(String propertyNo){
		List<HashMap<String, Object>> voteState = disposalDAO.selectVoteState(propertyNo);
		return voteState;
	}
	
}
