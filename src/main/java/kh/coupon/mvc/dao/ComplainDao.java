package kh.coupon.mvc.dao;

import java.util.List;

import kh.coupon.mvc.dto.ComplainDto;

public interface ComplainDao {

	   String namespace = "complain.";
	   
	   public List<ComplainDto> complain_list();
	   public ComplainDto complain_detail(int complain_no);
	   public int complain_insert(ComplainDto complain_dto);
	   public int complain_update(ComplainDto complain_dto);
	   public int complain_delete(int complain_no);
	   public int updateHit(int complain_no);
	   
   
}