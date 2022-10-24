package kr.ac.kopo.admin.service;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.admin.dao.AdminDAO;

@Service
public class AdminService {
	
	@Autowired
	private AdminDAO adminDAO;
	
	public List<HashMap<String, Object>> getPropertyInfo(){
		List<HashMap<String, Object>> propertyList = adminDAO.getPropertyInfo();
		
		
		return propertyList;
	}
	
	public List<HashMap<String, Object>> getDisposalProperty(){
		List<HashMap<String, Object>> disposalProperty = adminDAO.selectDisposalProperty();
		return disposalProperty;
	}
	
	public List<HashMap<String, Object>> getPropertyAnalyst(String propertyNo){
		List<HashMap<String, Object>> propertyAnalyst = adminDAO.selectPropertyAnalyst(propertyNo);
		return propertyAnalyst;
	}
	public List<HashMap<String, Object>> getPropertyAnalystWeek(String propertyNo){
		List<HashMap<String, Object>> propertyAnalystWeek = adminDAO.selectPropertyAnalystWeek(propertyNo);
		return propertyAnalystWeek;
	}
	
	public List<HashMap<String, Object>>  getOrderRecent(Integer startNum,Integer endNum){
		List<HashMap<String, Object>> orderRecentList = adminDAO.getOrderRecent(startNum,endNum);
		return orderRecentList;
	}
	
	public List<HashMap<String, Object>>  getVoteProcessDetail(Integer startNum,Integer endNum){
		List<HashMap<String, Object>> voteProcessList = adminDAO.getVoteProcessDetail(startNum,endNum);
		return voteProcessList;
	}
	
	public List<HashMap<String, Object>>  getCustomerList(){
		List<HashMap<String, Object>> customerList = adminDAO.getCustomerList();
		return customerList;
	}
	
	public List<HashMap<String, Object>> getSubscriptionProperty(){
		List<HashMap<String, Object>> subscriptionProperty = adminDAO.selectSubscriptionProperty();
		return subscriptionProperty;
	}
	
	public void insertBuilding(HashMap<String, Object> insertInfo) {
		System.out.println("insertBuilding Service");
		HashMap<String, Object> buildingInfo = new HashMap<String, Object>();
		buildingInfo.put("buildingNo", insertInfo.get("buildingNo"));
		buildingInfo.put("buildingName", insertInfo.get("buildingName"));
		buildingInfo.put("scale", insertInfo.get("scale"));
		buildingInfo.put("locationCode", insertInfo.get("locationCode"));
		buildingInfo.put("buildingAddress", insertInfo.get("buildingAddress"));
		buildingInfo.put("buildingPurpose", insertInfo.get("buildingPurpose"));
		buildingInfo.put("totalFloorArea", insertInfo.get("totalFloorArea"));
		buildingInfo.put("coverageRatio", insertInfo.get("coverageRatio"));
		buildingInfo.put("floorAreaRatio", insertInfo.get("floorAreaRatio"));
		buildingInfo.put("landPurpose", insertInfo.get("landPurpose"));
		buildingInfo.put("landArea", insertInfo.get("landArea"));
		buildingInfo.put("buildDate", insertInfo.get("buildDate"));
		buildingInfo.put("imageName1", "1");
		buildingInfo.put("imageName2", "1");
		buildingInfo.put("imageName3", "1");
		buildingInfo.put("map", insertInfo.get("map"));
		System.out.println("buildingInfo : " + buildingInfo);
		adminDAO.insertBuilding(buildingInfo);
	}
	public void insertProperty(HashMap<String, Object> insertInfo) {
		HashMap<String, Object> propertyInfo = new HashMap<String, Object>();
		System.out.println(Integer.parseInt(insertInfo.get("dabsCount").toString()));
		System.out.println(Integer.parseInt(insertInfo.get("competitionPrice").toString()));
		propertyInfo.put("propertyNo", insertInfo.get("propertyNo"));
		propertyInfo.put("propertyName", insertInfo.get("propertyName"));
		propertyInfo.put("buildingNo", insertInfo.get("buildingNo"));
		propertyInfo.put("propertyArea", insertInfo.get("propertyArea"));
		propertyInfo.put("propertyLandArea", insertInfo.get("propertyLandArea"));
		propertyInfo.put("dabsCount", insertInfo.get("dabsCount"));
		propertyInfo.put("pointHead1", insertInfo.get("pointHead1"));
		propertyInfo.put("pointHead2", insertInfo.get("pointHead3"));
		propertyInfo.put("pointHead3", insertInfo.get("pointHead3"));
		propertyInfo.put("pointDetail1", insertInfo.get("pointDetail1"));
		propertyInfo.put("pointDetail2", insertInfo.get("pointDetail2"));
		propertyInfo.put("pointDetail3", insertInfo.get("pointDetail3"));
		propertyInfo.put("yield", insertInfo.get("yield"));
		propertyInfo.put("yieldDate", insertInfo.get("yieldDate"));
		propertyInfo.put("fid", insertInfo.get("fid").toString());
		propertyInfo.put("competitionPeriod", insertInfo.get("competitionPeriod1").toString()+"~"+ insertInfo.get("competitionPeriod2").toString());
		propertyInfo.put("competitionDate", insertInfo.get("competitionDate"));
		propertyInfo.put("competitionPrice", insertInfo.get("competitionPrice"));
		propertyInfo.put("disposalState", 'N');
		propertyInfo.put("subscriptionState", 'P');
		propertyInfo.put("mbtiType", insertInfo.get("mbtiType"));
		adminDAO.insertProperty(propertyInfo);     
	}
	public void insertTenant(HashMap<String, Object> insertInfo) {
		HashMap<String, Object> tenantInfo = new HashMap<String, Object>();
		tenantInfo.put("buildingNo", insertInfo.get("buildingNo"));
		tenantInfo.put("propertyNo", insertInfo.get("propertyNo"));
		tenantInfo.put("tenantName", insertInfo.get("tenantName"));
		tenantInfo.put("business", insertInfo.get("business"));
		tenantInfo.put("contract", insertInfo.get("contract1").toString()+"~"+ insertInfo.get("contract2").toString());
		adminDAO.insertTenant(tenantInfo);
	}
	public void updateImageName(List<String> fileNameList,String buildingNo) {
		HashMap<String, Object> imageName = new HashMap<String, Object>();
		imageName.put("imageName1", fileNameList.get(0));
		imageName.put("imageName2", fileNameList.get(1));
		imageName.put("imageName3", fileNameList.get(2));
		imageName.put("buildingNo", buildingNo);
		adminDAO.updateImageName(imageName);
	}
	
	public List<HashMap<String, Object>> getMbtiRate(){
		List<HashMap<String, Object>> mbtiRate = adminDAO.getMbtiRate();
		return mbtiRate;
	}
	
	public List<HashMap<String, Object>> getAllProperty(){
		List<HashMap<String, Object>> propertyList = adminDAO.getAllProperty();
		return propertyList;
	}
	
	public void updateDisposal(HashMap<String, Object> updateInfo) {
		adminDAO.updateDisposal(updateInfo);
	}
}
