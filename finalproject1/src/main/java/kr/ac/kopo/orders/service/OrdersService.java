package kr.ac.kopo.orders.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.orders.dao.OrdersDAO;
import kr.ac.kopo.orders.vo.OrdersVO;

@Service
public class OrdersService {
	
	@Autowired
	private OrdersDAO orderDAO;
	
	public List<OrdersVO> selectOdersRealTime(String propertyNo,String date){
		List<OrdersVO> orderList = orderDAO.selectOrdersRealTime(propertyNo, date);
		return orderList;
	}
	
	public List<OrdersVO> selectOdersDaily(String propertyNo,String date){
		List<OrdersVO> orderList = orderDAO.selectOrdersDaily(propertyNo, date);
		return orderList;
	}
	
	public void orderProcess(OrdersVO order) {
		 orderDAO.ordersProcess(order);
	}
	
	public List<HashMap<String, String>> selectOrdersPaging(String startNum,String endNum,String customerId){
		List<HashMap<String, String>> orderList = orderDAO.selectOrdersPagin(startNum, endNum,customerId);
		return orderList;
	}
	
}
