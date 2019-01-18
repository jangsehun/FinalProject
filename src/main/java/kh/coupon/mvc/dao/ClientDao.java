package kh.coupon.mvc.dao;

import kh.coupon.mvc.dto.ClientDto;

public interface ClientDao {
	
	String NAMESPACE = "client.";
	
	public int insert(ClientDto dto);
	public ClientDto selectOne(int member_no);
}
