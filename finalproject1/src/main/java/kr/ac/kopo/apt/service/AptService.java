package kr.ac.kopo.apt.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.apt.dao.AptDAO;

@Service
public class AptService {

		@Autowired
		private AptDAO aptDAO;
		
		public List<HashMap<String, Object>> getAptPrice1(String location){
			List<HashMap<String, Object>> aptPrice = aptDAO.getAptPrice1(location);
			return aptPrice;
		}
		
		public List<HashMap<String, Object>> getAptPrice2(String location){
			List<HashMap<String, Object>> aptPrice = aptDAO.getAptPrice2(location);
			return aptPrice;
		}
		
		public List<HashMap<String, Object>> getAptPrice3(String location){
			List<HashMap<String, Object>> aptPrice = aptDAO.getAptPrice3(location);
			return aptPrice;
		}
}
