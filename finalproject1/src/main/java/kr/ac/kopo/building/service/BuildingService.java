package kr.ac.kopo.building.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.building.dao.BuildingDAO;
import kr.ac.kopo.building.vo.BuildingVO;
import kr.ac.kopo.property.vo.PropertyVO;
import kr.ac.kopo.tenant.vo.TenantVO;

@Service
public class BuildingService {
	
	@Autowired
	private BuildingDAO buildingDAO;
	
	public BuildingVO selectByBuildingNo(int buildingNo) {
		
		BuildingVO building = buildingDAO.selectByBuildingNo(buildingNo);
		return building;
	}
	
	public PropertyVO selectByPropertyNo(int propertyNo,int buildingNo) {
		
		PropertyVO property = buildingDAO.selectByPropertyNo(propertyNo, buildingNo);
		return property;
	}
	
	public TenantVO selectByTenantNo(int propertyNo,int buildingNo) {
		TenantVO tenant = buildingDAO.selectByTenantNo(propertyNo, buildingNo);
		return tenant;
	}
	
	public PropertyVO selectByFid(int fid) {
		
		PropertyVO property = buildingDAO.selectByFid(fid);
		return property;
	}
	
	public List<HashMap<String, Object>> getIndexBuilding(){
		List<HashMap<String, Object>> indexBuilding = buildingDAO.selectIndexBuilding();
		return indexBuilding;
	}
	
	public HashMap<String, Object> getAcml(String propertyNo){
		HashMap<String, Object> acml = buildingDAO.selectAcml(propertyNo);
		return acml;
	}
}










