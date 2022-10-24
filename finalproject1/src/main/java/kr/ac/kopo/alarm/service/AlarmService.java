package kr.ac.kopo.alarm.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.alarm.dao.AlarmDAO;

@Service
public class AlarmService {
	
	@Autowired
	private  AlarmDAO alarmDAO;
	
	public  List<HashMap<String, Object>> getAlam(String cutomerId){
		List<HashMap<String, Object>> alarm = alarmDAO.selectAlarm(cutomerId);
		return alarm;
	}
	
	public void changeReadState(String alarmNo) {
		alarmDAO.changeReadState(alarmNo);
	}
}
