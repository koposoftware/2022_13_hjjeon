package kr.ac.kopo.dividend.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DividendDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void dividenProcess27() {
		String divden = sqlSessionTemplate.selectOne("dividen.dao.dividenDAO.dividenProcess27");
	}
	
	public void dividenProcess1() {
		String divden = sqlSessionTemplate.selectOne("dividen.dao.dividenDAO.dividenProcess1");
	}
}
