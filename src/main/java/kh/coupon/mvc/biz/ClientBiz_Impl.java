package kh.coupon.mvc.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.coupon.mvc.dao.ClientDao;
import kh.coupon.mvc.dto.ClientDto;

@Service
public class ClientBiz_Impl implements ClientBiz{

	@Autowired
	private ClientDao client_dao;
	
	@Override
	public int insert(ClientDto dto) {
		return client_dao.insert(dto);
	}

	@Override
	public ClientDto selectOne(int member_no) {
		return client_dao.selectOne(member_no);
	}

}
