package kr.ac.kopo.orders.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.orders.vo.OrdersVO;

@Repository
public class OrdersDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<OrdersVO> selectOrdersRealTime(String propertyNo,String date){
		List<OrdersVO> orderList =  new ArrayList<OrdersVO>();
		Map<String, String> orderMap = new HashMap<>();
		orderMap.put("propertyNo", propertyNo);
		orderMap.put("date", date);
		
		orderList = sqlSessionTemplate.selectList("orders.dao.ordersDAO.selectOrdersRealTime", orderMap);
		return orderList;
	}
	
	public List<OrdersVO> selectOrdersDaily(String propertyNo,String date){
		List<OrdersVO> orderList =  new ArrayList<OrdersVO>();
		Map<String, String> orderMap = new HashMap<>();
		orderMap.put("propertyNo", propertyNo);
		orderMap.put("date", date);
		orderMap.put("orderState", "S");
		System.out.println(propertyNo+date);
		orderList = sqlSessionTemplate.selectList("orders.dao.ordersDAO.selectOrdersDaily", orderMap);
		return orderList;
	}
	
	public void ordersProcess(OrdersVO order) {
		OrdersVO orders =  sqlSessionTemplate.selectOne("orders.dao.ordersDAO.ordersProcess", order);
		
	}
	
	public List<HashMap<String, String>> selectOrdersPagin(String startNum,String endNum,String customerId){
		Map<String, String> numMap = new  HashMap<String, String>();
		numMap.put("startNum", startNum);
		numMap.put("endNum", endNum);
		numMap.put("customerId", customerId);
		System.out.println(numMap);
		List<HashMap<String, String>> orderList = sqlSessionTemplate.selectList("orders.dao.ordersDAO.selectOrdersPaging", numMap);
		return orderList;
	}
	
}
