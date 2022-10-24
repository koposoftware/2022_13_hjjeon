package kr.ac.kopo.card.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.card.dao.CardDAO;

@Service
public class CardService {
	
	@Autowired
	private CardDAO cardDAO;
	
	public List<HashMap<String, Object>> getCardList(int customerIdNum2){
		List<HashMap<String, Object>> cardList = cardDAO.selectCardList(customerIdNum2);
		return cardList;
	}
	
	public List<HashMap<String, Object>> getCardInfo(HashMap<String, Object> card){
		List<HashMap<String, Object>> cardInfo = cardDAO.selectCardInfo(card);
		return cardInfo;
	}
	
	public List<HashMap<String, Object>> getBuildingPlus(String locationCode){
		List<HashMap<String, Object>> buildingPlusList = cardDAO.selectBuildingPlus(locationCode);
		return buildingPlusList;
	}
}
