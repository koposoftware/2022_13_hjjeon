package kr.ac.kopo.alarm.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AlarmDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<HashMap<String, Object>> selectAlarm(String customerId){
		
		List<HashMap<String, Object>> alarm = sqlSessionTemplate.selectList("alarm.dao.alarmDAO.selectAlarm",customerId);
		return alarm;
	}
	
	public void changeReadState(String alarmNo) {
		sqlSessionTemplate.update("alarm.dao.alarmDAO.changeReadState",alarmNo);
	}
}
