package kr.ac.kopo.dabs.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.dabs.vo.DabsVO;

@Repository
public class DabsDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<HashMap<String, Integer>> getSumDabsPrice(String userId) {
		List<HashMap<String, Integer>> sumDabsPirceList = new ArrayList<>();
		sumDabsPirceList = sqlSessionTemplate.selectList("dabs.dao.dabsDAO.selectSumDabsPrice", userId);
		return sumDabsPirceList;
	}
	
	public List<HashMap<String, String>> getBuildingInfoByPropertyNo(String propertyNo){
		List<HashMap<String, String>> buildingInfo = new ArrayList<HashMap<String,String>>();
		buildingInfo = sqlSessionTemplate.selectList("dabs.dao.dabsDAO.selectBuildingInfoByPropertyNo", propertyNo);
		return buildingInfo;
	}
	
public HashMap<String, Object> getDabsCnt(HashMap<String, String> dabsInfo){
		HashMap<String, Object> dabsCnt = sqlSessionTemplate.selectOne("dabs.dao.dabsDAO.selectDabsCnt", dabsInfo);
		return dabsCnt;
	}
	
}
