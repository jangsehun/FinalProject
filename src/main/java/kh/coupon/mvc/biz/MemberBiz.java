package kh.coupon.mvc.biz;

import kh.coupon.mvc.dto.MemberDto;

public interface MemberBiz {

	public MemberDto login(String member_id, String member_password);
	public int regist(MemberDto dto);
	public MemberDto loginInfo(int member_no);
	
}
