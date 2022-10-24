package kr.ac.kopo.card.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CardDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<HashMap<String, Object>> selectCardList(int customerIdNum2){
		
		List<HashMap<String, Object>> cardList = sqlSessionTemplate.selectList("card.dao.cardDAO.selectCardList", customerIdNum2);
		return cardList;
		
	}
	
	public List<HashMap<String, Object>> selectCardInfo(HashMap< String, Object> card){
		List<HashMap<String, Object>> cardInfo = sqlSessionTemplate.selectList("card.dao.cardDAO.selectCardInfoList",card);
		return cardInfo;
	}
	
	public List<HashMap<String, Object>> selectBuildingPlus(String locationCode){
		List<HashMap<String, Object>> buildingPlusList = sqlSessionTemplate.selectList("card.dao.cardDAO.selectBuildingPlus",locationCode);
		return buildingPlusList;
	}
}
