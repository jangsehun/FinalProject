package kh.coupon.mvc.dto;

public class RegistDto {

   private int member_no;
   private String member_name;
   private String member_id;
   private String member_password;
   
   public RegistDto() {}

   public RegistDto(int member_no, String member_name, String member_id, String member_password) {
      super();
      this.member_no = member_no;
      this.member_name = member_name;
      this.member_id = member_id;
      this.member_password = member_password;
   }

   public int getMember_no() {
      return member_no;
   }

   public void setMember_no(int member_no) {
      this.member_no = member_no;
   }

   public String getMember_name() {
      return member_name;
   }

   public void setMember_name(String member_name) {
      this.member_name = member_name;
   }

   public String getMember_id() {
      return member_id;
   }

   public void setMember_id(String member_id) {
      this.member_id = member_id;
   }

   public String getMember_password() {
      return member_password;
   }

   public void setMember_password(String member_password) {
      this.member_password = member_password;
   }
   

	
}

