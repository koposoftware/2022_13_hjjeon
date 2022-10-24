package kr.ac.kopo.subscription.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.subscription.dao.SubscriptionDAO;

@Service
public class SubscriptionService {
	
	@Autowired
	private SubscriptionDAO subscriptionDAO;
	
	public List<HashMap<String, Object>> getSubscriptionProperty(String propertyNo){
		List<HashMap<String, Object>> subscriptionProperty = subscriptionDAO.selectSubscriptionProperty(propertyNo);
		return subscriptionProperty;
	}
	
	public void subscriptionProcess(HashMap<String, Object> subscriptionMap) {
		subscriptionDAO.subscriptionProcess(subscriptionMap);
	}
	
	public List<HashMap<String, Object>> getSubscriptionAmount(String propertyNo){
		List<HashMap<String, Object>> subscriprionAmount = subscriptionDAO.selectSubscriptionAmount(propertyNo);
		return subscriprionAmount;
	}
	
	public List<HashMap<String, Object>> getSubscriptionList(){
		List<HashMap<String, Object>> subscriptionList = subscriptionDAO.selectSubscriptionList();
		return subscriptionList;
	}
}











