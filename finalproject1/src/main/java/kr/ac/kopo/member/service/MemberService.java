package kr.ac.kopo.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.member.dao.MemberDAO;
import kr.ac.kopo.member.vo.MemberVO;

@Service
public class MemberService {
	@Autowired
	private MemberDAO memberDAO;
	
	public MemberVO selectUser(MemberVO member) {
		MemberVO authMember = memberDAO.selectUser(member);
		return authMember;
	}
	
	public void insertUser(MemberVO member) {
		memberDAO.inseretUser(member);
	}
	
	public int getCustomerIdNum2(String customerId) {
		int customerIdNum2 = memberDAO.selectCustomerIdNum2(customerId);
		return customerIdNum2;
	}
}
