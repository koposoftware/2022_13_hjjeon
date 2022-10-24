package kr.ac.kopo.test;

import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ac.kopo.bidaskbalance.vo.BidAskBalanceVO;
import kr.ac.kopo.building.vo.BuildingVO;
import kr.ac.kopo.roi.vo.RoiVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:config/spring/spring-mvc.xml"})
public class MybatisTest {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Test
	public void mybatisT() {
		assertNotNull(sqlSessionTemplate);
	}
	
//	@Test
//	public void boardSelectByNo() {
//		RoiVO roi  = new RoiVO();
//		List<RoiVO> board = sqlSessionTemplate.selectList("roi.dao.roiDAO.selectAll","2011");
//		System.out.println(board);
//		
//	}
	
	@Test
	public void buildingSelectByNo() {
		BuildingVO building = sqlSessionTemplate.selectOne("building.dao.buildingDAO.selectByBuildingNo", 1000);
	
		System.out.println(building);
	
	}

	@Test
	public void selectByPropertyNo() {
		
		List< BidAskBalanceVO> bidAskBalanceList = sqlSessionTemplate.selectList("bidAskBalance.dao.bidAskBalanceDAO.selectByPropertyNo",10000000);
		System.out.println(bidAskBalanceList);
	}
	
	
	
	
	
	
	
	
	
	
	
}
