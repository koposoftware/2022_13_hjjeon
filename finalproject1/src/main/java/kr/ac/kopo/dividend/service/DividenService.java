package kr.ac.kopo.dividend.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dividend.dao.DividendDAO;

@Service
public class DividenService {
	@Autowired
	private DividendDAO dividenDao;
	
	public void dividenProcess27() {
		 dividenDao.dividenProcess27();
	}
	
	public void dividenProcess1() {
		 dividenDao.dividenProcess1();
	}
}
