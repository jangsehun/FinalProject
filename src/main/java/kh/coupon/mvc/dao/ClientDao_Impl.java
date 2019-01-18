package kh.coupon.mvc.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.coupon.mvc.dto.ClientDto;

@Repository
public class ClientDao_Impl implements ClientDao{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	@Override
	public int insert(ClientDto dto) {
		return sqlSession.insert(NAMESPACE + "client_regist", dto);
	}


	@Override
	public ClientDto selectOne(int member_no) {
		return sqlSession.selectOne(NAMESPACE + "client_selectone", member_no);
	}
	
	
	
}
