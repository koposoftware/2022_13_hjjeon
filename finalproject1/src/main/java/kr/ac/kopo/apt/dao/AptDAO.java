package kr.ac.kopo.apt.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AptDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<HashMap<String, Object>> getAptPrice1(String location){
		List<HashMap<String, Object>> aptPrice = sqlSessionTemplate.selectList("apt.dao.aptDAO.getAptPrice1", location);
		return aptPrice;
	}
	public List<HashMap<String, Object>> getAptPrice2(String location){
		List<HashMap<String, Object>> aptPrice = sqlSessionTemplate.selectList("apt.dao.aptDAO.getAptPrice2", location);
		return aptPrice;
	}
	public List<HashMap<String, Object>> getAptPrice3(String location){
		List<HashMap<String, Object>> aptPrice = sqlSessionTemplate.selectList("apt.dao.aptDAO.getAptPrice3", location);
		return aptPrice;
	}
}

