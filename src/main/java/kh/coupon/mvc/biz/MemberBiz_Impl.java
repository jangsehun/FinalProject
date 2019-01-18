package kh.coupon.mvc.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.coupon.mvc.dao.MemberDao;
import kh.coupon.mvc.dto.MemberDto;

@Service
public class MemberBiz_Impl implements MemberBiz{

	@Autowired
	private MemberDao member_dao;
	
	@Override
	public MemberDto login(String member_id, String member_password) {
		return member_dao.login(member_id, member_password);
	}

	@Override
	public int regist(MemberDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public MemberDto loginInfo(int member_no) {
		return member_dao.loginInfo(member_no);
	}

	
	
}
