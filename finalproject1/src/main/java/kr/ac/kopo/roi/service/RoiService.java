package kr.ac.kopo.roi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.roi.dao.RoiDAO;
import kr.ac.kopo.roi.vo.RoiVO;

@Service
public class RoiService {
	
	@Autowired
	private RoiDAO roiDAO;
	
	public List<RoiVO> selectAll(String date1,String date2,String location){
		List<RoiVO> list = roiDAO.selectAll(date1, date2, location);
		return list;
	}
	
}
