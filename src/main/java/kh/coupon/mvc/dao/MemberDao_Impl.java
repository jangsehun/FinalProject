package kh.coupon.mvc.dao;

import java.util.HashMap;
import java.util.Map;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.coupon.mvc.dto.MemberDto;

@Repository
public class MemberDao_Impl implements MemberDao{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	
	
	@Override
	public MemberDto login(String member_id, String member_password) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("member_id", member_id);
		map.put("member_password", member_password);
		
		return sqlSession.selectOne(NAMESPACE + "login", map);
	}

	@Override
	public int regist(MemberDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public MemberDto loginInfo(int member_no) {
		MemberDto dto = sqlSession.selectOne(NAMESPACE + "loginInfo", member_no);
		return dto;
	}

}
