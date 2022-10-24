package kr.ac.kopo.mbti.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.mbti.dao.MbtiDAO;

@Service
public class MbtiService {
	@Autowired
	private MbtiDAO mbtiDAO;
	
	@Transactional
	public void insertMbti(HashMap<String, String> mbti) {
		mbtiDAO.updateMbtiPoint(mbti);
		mbtiDAO.updateMbtiType(mbti);
	}
	public List<HashMap<String, Object>> getCustomerMbtiType(String customerId){
		List<HashMap<String, Object>> customerMbtiType = mbtiDAO.selectCustomerMbtiType(customerId);
		return customerMbtiType;
	}
	
}
