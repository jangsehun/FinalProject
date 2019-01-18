package kh.coupon.mvc.dao;

import kh.coupon.mvc.dto.MemberDto;

public interface MemberDao {

	String NAMESPACE = "user.";
	
	public MemberDto login(String member_id, String member_password);
	public int regist(MemberDto dto);
	public MemberDto loginInfo(int member_no);
	
	
}
