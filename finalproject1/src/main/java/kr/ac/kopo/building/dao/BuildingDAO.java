package kr.ac.kopo.building.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.building.vo.BuildingVO;
import kr.ac.kopo.property.vo.PropertyVO;
import kr.ac.kopo.tenant.vo.TenantVO;

@Repository
public class BuildingDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public BuildingVO selectByBuildingNo(int buildingNo) {
		BuildingVO building = sqlSessionTemplate.selectOne("building.dao.buildingDAO.selectByBuildingNo", buildingNo);
		return building;
	}
	
	public PropertyVO selectByPropertyNo(int propertyNo,int buildingNo) {
		Map<String, Integer> map = new HashMap<>();
		map.put("propertyNo", propertyNo);
		map.put("buildingNo", buildingNo);
		
		PropertyVO property = sqlSessionTemplate.selectOne("building.dao.buildingDAO.selectByPropertyNo", map);
		return property;
	}
	
	public TenantVO selectByTenantNo(int propertyNo,int buildingNo) {
		Map<String, Integer> map = new HashMap<>();
		map.put("propertyNo", propertyNo);
		map.put("buildingNo", buildingNo);
		
		TenantVO tenant = sqlSessionTemplate.selectOne("building.dao.buildingDAO.selectByTenantNo", map);
		return tenant;
	}

	public PropertyVO selectByFid(int fid) {
		
		PropertyVO property = sqlSessionTemplate.selectOne("building.dao.buildingDAO.selectByFid", fid);
		return property;
	}
	
	public List<HashMap<String, Object>> selectIndexBuilding(){
		List<HashMap<String, Object>> indexBuilding = sqlSessionTemplate.selectList("building.dao.buildingDAO.selectIndexBuilding");
		return indexBuilding;
	}
	
	public HashMap<String, Object> selectAcml(String propertyNo){
		HashMap<String, Object> acml = sqlSessionTemplate.selectOne("building.dao.buildingDAO.selectAcml",propertyNo);
		return acml;
	}
	
	
}












