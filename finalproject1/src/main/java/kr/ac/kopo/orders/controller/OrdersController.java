package kr.ac.kopo.orders.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.orders.service.OrdersService;
import kr.ac.kopo.orders.vo.OrdersVO;

@Controller
public class OrdersController {
	
	@Autowired
	private OrdersService ordersServce;
	
	@ResponseBody
	@GetMapping("/orders/realtime")
	public List<OrdersVO> selectOrdersRealTime(@RequestParam("propertyNo") String propertyNo,@RequestParam("date") String date){
		
		List<OrdersVO> orderList = ordersServce.selectOdersRealTime(propertyNo, date);
		System.out.println(propertyNo+date);
		System.out.println("list = " +orderList);
		return orderList;
	}
	
	@ResponseBody
	@GetMapping("/orders/daily")
	public List<OrdersVO> selectOrdersDaily(@RequestParam("propertyNo") String propertyNo,@RequestParam("date") String date){
		
		List<OrdersVO> orderList = ordersServce.selectOdersDaily(propertyNo, date);
		System.out.println(propertyNo+date);
		System.out.println("list = " +orderList);
		return orderList;
	}
	
	@ResponseBody
	@PostMapping("/orders/process")
	public void ordersProcess(@RequestBody OrdersVO order) {
		System.out.println(order);
		ordersServce.orderProcess(order);
	}
	
	@ResponseBody
	@GetMapping("/orders/paging")
	public List<HashMap<String, String>> selectOrdersPaging(@RequestParam("startNum") String startNum,@RequestParam("endNum") String endNum,@RequestParam("customerId") String customerId){
		System.out.println("startNum = "  + startNum);
		System.out.println("endNum = "  + endNum);
		List<HashMap<String, String>> orderList = ordersServce.selectOrdersPaging(startNum, endNum,customerId);
		return orderList;
	}
	
	
	
}
