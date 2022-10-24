package kr.ac.kopo.mbti.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MbtiDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void updateMbtiPoint(HashMap<String, String> mbti) {
		sqlSessionTemplate.update("mbti.dao.mbtiDAO.updateMbtiPoint",mbti);
	}
	
	public void updateMbtiType(HashMap<String, String> mbti) {
		sqlSessionTemplate.update("mbti.dao.mbtiDAO.updateMbtiType",mbti);
	}
	
	public List<HashMap<String, Object>> selectCustomerMbtiType(String customerId) {
		List<HashMap<String, Object>> customerMbtiType = sqlSessionTemplate.selectList("mbti.dao.mbtiDAO.selectCustomerMbtiType", customerId);
		return customerMbtiType;
	}
	
}
