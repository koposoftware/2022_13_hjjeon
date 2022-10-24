package kr.ac.kopo.admin.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<HashMap<String, Object>> getPropertyInfo(){
		List<HashMap<String, Object>> propertyList = sqlSessionTemplate.selectList("admin.dao.adminDAO.getPropertyInfo");
		
		return propertyList;
	}
	
	public List<HashMap<String, Object>> selectDisposalProperty() {
		List<HashMap<String, Object>> disposalProperty = sqlSessionTemplate.selectList("disposal.dao.disposalDAO.selectDisposalProperty");
		return disposalProperty;
	}
	
	public List<HashMap<String, Object>> selectPropertyAnalyst(String propertyNo){
		List<HashMap<String, Object>> propertyAnalyst = sqlSessionTemplate.selectList("admin.dao.adminDAO.getPropertyAnalyist", propertyNo);
		return propertyAnalyst;
	}
	public List<HashMap<String, Object>>  selectPropertyAnalystWeek(String propertyNo){
		List<HashMap<String, Object>> propertyAnalystWeek = sqlSessionTemplate.selectList("admin.dao.adminDAO.getPropertyAnalystWeek", propertyNo);
		return propertyAnalystWeek;
	}
	
	public List<HashMap<String, Object>>  getOrderRecent(Integer startNum ,Integer endNum){
		HashMap<String, Integer> numMap = new HashMap<String, Integer>();
		numMap.put("startNum", startNum);
		numMap.put("endNum", endNum);
		List<HashMap<String, Object>> orderRecentList = sqlSessionTemplate.selectList("admin.dao.adminDAO.getOrdersRecent",numMap);
		return orderRecentList;
	}
	
	public List<HashMap<String, Object>>  getVoteProcessDetail(Integer startNum ,Integer endNum){
		HashMap<String, Integer> numMap = new HashMap<String, Integer>();
		numMap.put("startNum", startNum);
		numMap.put("endNum", endNum);
		List<HashMap<String, Object>> voteProcessList = sqlSessionTemplate.selectList("admin.dao.adminDAO.getVoteProcessDetail",numMap);
		return voteProcessList;
	}
	public List<HashMap<String, Object>>  getCustomerList(){
		List<HashMap<String, Object>> customerList = sqlSessionTemplate.selectList("admin.dao.adminDAO.getCustomerList");
		return customerList;
	}
	
		public List<HashMap<String, Object>> selectSubscriptionProperty(){
		
		List<HashMap<String, Object>> subscriptionProperty = sqlSessionTemplate.selectList("admin.dao.adminDAO.selectSubscriptionProperty");
		return subscriptionProperty;
	}
		
		public void insertBuilding(HashMap<String, Object> buildingInfo) {
			sqlSessionTemplate.insert("admin.dao.adminDAO.insertBuilding", buildingInfo);
		}
		
		public void insertProperty(HashMap<String, Object> propertyInfo) {
			sqlSessionTemplate.insert("admin.dao.adminDAO.insertProperty", propertyInfo);
		}
		public void insertTenant(HashMap<String, Object> tenantInfo) {
			sqlSessionTemplate.insert("admin.dao.adminDAO.insertTenant", tenantInfo);
		}
		
		public void updateImageName(HashMap<String, Object> imageName) {
			sqlSessionTemplate.update("admin.dao.adminDAO.updateImageName",imageName);
		}
		
		public List<HashMap<String, Object>> getMbtiRate(){
			List<HashMap<String, Object>> mbtiRate = sqlSessionTemplate.selectList("admin.dao.adminDAO.getMbtiRate");
			return mbtiRate;
		}
		
		public List<HashMap<String, Object>> getAllProperty(){
			List<HashMap<String, Object>> propertyList = sqlSessionTemplate.selectList("admin.dao.adminDAO.getAllProperty");
			return propertyList;
		}
		
		public void updateDisposal(HashMap<String, Object> updateInfo) {
			sqlSessionTemplate.update("admin.dao.adminDAO.updateDisposal",updateInfo);
		}
}





