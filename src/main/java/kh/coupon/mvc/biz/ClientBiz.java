package kh.coupon.mvc.biz;

import kh.coupon.mvc.dto.ClientDto;

public interface ClientBiz {

	public int insert(ClientDto dto);
	public ClientDto selectOne(int member_no);
}
