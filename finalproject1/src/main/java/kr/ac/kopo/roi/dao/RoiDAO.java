package kr.ac.kopo.roi.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.roi.vo.RoiVO;

@Repository
public class RoiDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	public List<RoiVO> selectAll(String date1,String date2,String location){
		
		List<RoiVO> list = new ArrayList<RoiVO>();
		Map<String, String> roiMap =  new HashMap<>();
		roiMap.put("date1", date1);
		roiMap.put("date2", date2);
		roiMap.put("location", location);
		
		
		
		list = sqlSessionTemplate.selectList("roi.dao.roiDAO.selectAll",roiMap);
		
		return list;
		
	}
}
