package kr.ac.kopo.dabs.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dabs.dao.DabsDAO;

@Service
public class DabsService {
	@Autowired
	private DabsDAO dabsDAO;
	
	public List<HashMap<String, Integer>> getSumDabsPrice(String userId) {
		List<HashMap<String, Integer>> sumDabsPirceList = new ArrayList<>();
		sumDabsPirceList = dabsDAO.getSumDabsPrice(userId);
		return sumDabsPirceList;
	}
	
	public List<HashMap<String, String>> getBuildingInfoByPropertyNo(String propertyNo){
		List<HashMap<String, String>> buildingInfo = new ArrayList<HashMap<String,String>>();
		buildingInfo = dabsDAO.getBuildingInfoByPropertyNo(propertyNo);
		return buildingInfo;
	}
	
	public HashMap<String, Object> getDabsCnt(HashMap<String, String> dabsInfo){
		
		HashMap<String, Object> dabsCnt = dabsDAO.getDabsCnt(dabsInfo);
		return dabsCnt;
	}
	
}
