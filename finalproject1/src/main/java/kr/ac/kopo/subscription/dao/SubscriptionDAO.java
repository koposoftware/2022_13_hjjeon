package kr.ac.kopo.subscription.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SubscriptionDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<HashMap<String, Object>> selectSubscriptionProperty(String propertyNo){
		
		List<HashMap<String, Object>> subscriptionProperty = sqlSessionTemplate.selectList("subscription.dao.subscriptionDAO.selectSubscriptionProperty", propertyNo);
		return subscriptionProperty;
	}
	
	public void subscriptionProcess(HashMap<String, Object> subscriptionMap) {
		sqlSessionTemplate.update("subscription.dao.subscriptionDAO.subscriptionProcess", subscriptionMap);
	}
	
	public List<HashMap<String, Object>> selectSubscriptionAmount(String propertyNo){
		
		List<HashMap<String, Object>> subscriprionAmount =   sqlSessionTemplate.selectList("subscription.dao.subscriptionDAO.selectSubscriptionAmount", propertyNo);
		return subscriprionAmount;
	}
	
	public List<HashMap<String, Object>> selectSubscriptionList(){
		List<HashMap<String, Object>> subscriptionList = sqlSessionTemplate.selectList("subscription.dao.subscriptionDAO.selectSubscriptionList");
		
		return subscriptionList;
	}
	
}










