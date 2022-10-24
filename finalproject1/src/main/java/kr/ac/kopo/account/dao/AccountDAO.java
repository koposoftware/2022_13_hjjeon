package kr.ac.kopo.account.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.account.vo.AccountVO;

@Repository
public class AccountDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void insertAccount(AccountVO account) {
			sqlSessionTemplate.insert("account.dao.accountDAO.insertAccount",account);
	}
	
	public AccountVO selectAccountByUserId(String userId) {
		
		AccountVO account =  sqlSessionTemplate.selectOne("account.dao.accountDAO.selectAccountByUserId", userId);
		
		return account;
	}
	
	public String selectCustomerIdNum(String customerId) {
		String idNum = sqlSessionTemplate.selectOne("account.dao.accountDAO.selectCustomerIdNum", customerId);
		return idNum;
	}
	
	public HashMap<String, Object> checkAccount(HashMap<String, Object> accountInfo){
		HashMap<String, Object> account = sqlSessionTemplate.selectOne("account.dao.accountDAO.checkAccount",accountInfo);
		return account;
	}
}
