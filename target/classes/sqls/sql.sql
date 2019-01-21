/*
===================== �븘�룆 =========================

1. SEQUENCE �씠由� 
	�뀒�씠釉� �씠由� 留덉�留됱뿉 '_seq'

	�삁�떆 ) CREATE SEQUENCE user_seq;

2. user �뀒�씠釉붿쓽 user_role 而щ읆 湲곕낯媛�
	�궗�슜�옄 			ROLE_USER
	�젣�쑕�뾽泥�			ROLE_CLIENT
	�븰�썝
		�솉蹂댄�		ROLE_MARKETING
		�쉶怨꾪�		ROLE_ACCOUNT
		�슫�쁺��		ROLE_OPERATION

3. �젣�빟議곌굔 ERD 李몄“�빐�꽌 異붽�
	留곹겕 : https://www.erdcloud.com/d/HnGb4TFv5b4sBdf2s		

4. ��臾몄옄濡� �벐吏�留먭린

5. 媛� �븘�슂�븳 �뀒�씠釉붾쭔 �깮�꽦�빐�꽌 湲곕뒫 媛쒕컻

6. 湲곕뒫 援ы쁽以� DB �닔�젙�씠 �릺�뼱�빞�븳�떎硫� �씪�떒 �닔�젙 �썑 �븣�젮二쇨린!!! (ERD CLOUD�뿉 諛섏쁺�븯湲�)
	https://www.erdcloud.com/d/HnGb4TFv5b4sBdf2s
====================================================
*/

CREATE TABLE member(
	member_no	NUMBER	NOT NULL PRIMARY KEY,									
	member_name	VARCHAR2(500)	NOT NULL,						
	member_id	VARCHAR2(500)	NOT NULL,							
	member_password	VARCHAR2(500)	NOT NULL,					
	member_profile	VARCHAR2(500)	NULL,						
	member_phone	VARCHAR2(500)	NOT NULL,						
	member_date_create	DATE	NOT NULL,						
	member_date_update	DATE	NULL,							
	member_nickname	VARCHAR2(500)	NULL,						
	member_class	VARCHAR2(500)	NOT NULL,						
	member_email	VARCHAR2(500)	NOT NULL,						
	member_role	VARCHAR2(500)	NOT NULL,						
	member_withdraw	VARCHAR2(500)	NULL,						
	member_date_withdraw	DATE	NULL,							
	member_verification	VARCHAR2(500)	NOT NULL				
);

CREATE TABLE client (
	client_no	NUMBER	NOT NULL PRIMARY KEY,								
	user_no	NUMBER	NOT NULL,													
	client_name_store	VARCHAR2(500)	NOT NULL,				
	client_phone_store	VARCHAR2(500)	NULL,					
	client_address	VARCHAR2(500)	NOT NULL,					
	client_registration	VARCHAR2(500)	NOT NULL,				
	client_max_client	VARCHAR2(500)	NULL,					
	client_reservation	VARCHAR2(500)	NOT NULL,
	CONSTRAINT member_fk_member_no FOREIGN KEY(member_no) REFERENCES member(member_no)
);

CREATE TABLE coupon (
	coupon_no	NUMBER	NOT NULL,								 
	client_no	NUMBER	NOT NULL,											
	user_no	NUMBER	NOT NULL,													
	coupon_title	VARCHAR2(500)	NOT NULL,					
	coupon_price	NUMBER	NOT NULL,							
	coupon_image	VARCHAR2(500)	NULL,						
	coupon_detail	VARCHAR2(500)	NULL,						
	coupon_category	VARCHAR2(500)	NOT NULL,		
	coupon_date_create	DATE	NOT NULL,						 
	coupon_kh_count	NUMBER	NULL,								
	coupon_kh_date_buy	NUMBER	NULL,							
	coupon_user_count	NUMBER	NULL,							
	coupon_user_date_buy	DATE	NULL,						
	coupon_user_date_send	DATE	NULL,						
	coupon_user_date_expired	DATE	NULL,					
	coupon_user_send_to	VARCHAR2(500)	NULL,					
	coupon_user_send_from	VARCHAR2(500)	NULL				
);

CREATE TABLE board (
	board_no	NUMBER	NOT NULL PRIMARY KEY,								
	user_no	NUMBER	NOT NULL,									 					
	board_title	VARCHAR2(500)	NOT NULL,						
	board_content	VARCHAR2(3000)	NOT NULL,					
	board_date_create	DATE	NOT NULL,						
	board_date_update	DATE	NULL,							
	board_category	VARCHAR2(500)	NOT NULL,					
	board_count	NUMBER	NULL,
	board_like NUMBER NULL
);

CREATE TABLE client_request (
	request_no	NUMBER	NOT NULL PRIMARY KEY,								 
	client_no	NUMBER	NOT NULL,								
	user_no	NUMBER	NOT NULL,									
	request_date_create	DATE	NOT NULL,						
	request_date_confirm	DATE	NULL,						
	request_date_terminate	DATE	NULL,						
	request_status	VARCHAR2(500)	NOT NULL,
	CONSTRAINT client_fk_client_no FOREIGN KEY(client_no) REFERENCES client(client_no),
    CONSTRAINT member_fk_member_no FOREIGN KEY(member_no) REFERENCES member(member_no)
);

CREATE TABLE client_like (
	client_like_no	NUMBER	NOT NULL PRIMARY KEY,
	client_no	NUMBER	NOT NULL,								
	user_no	NUMBER	NOT NULL,									
	client_like_count	NUMBER	NULL,							 
	client_like_date_create	DATE	NULL,
	CONSTRAINT client_fk_client_no FOREIGN KEY(client_no) REFERENCES client(client_no)
);

CREATE TABLE board_like (
	board_like_no	NUMBER	NOT NULL,
	board_no	NUMBER	NOT NULL,
	user_no	NUMBER	NOT NULL,
	board_like_count	NUMBER	NOT NULL,
	board_like_date_create	DATE	NOT NULL
);

CREATE TABLE board_reply (
	reply_no	NUMBER	NOT NULL,								
	board_no	NUMBER	NOT NULL,								
	user_no	NUMBER	NOT NULL,										
	reply_title	VARCHAR2(500)	NOT NULL,						
	reply_content	VARCHAR2(3000)	NOT NULL,					
	reply_date_create	DATE	NOT NULL,						
	reply_date_update	DATE	NULL							
);


CREATE TABLE user_reservation (
	reservation_no	NUMBER	NOT NULL,							
	user_no	NUMBER	NOT NULL,									
	client_no	NUMBER	NOT NULL,								
	reservation_date_request	DATE	NOT NULL,				
	reservation_date	VARCHAR2(50)	NOT NULL,				
	reservation_people	NUMBER	NOT NULL,						
	reservation_time	NUMBER	NOT NULL,							
	reservation_confirm	VARCHAR2(2)	NOT NULL,					
	reservation_memo	VARCHAR2(50)	NULL,					
	reservation_reject	VARCAHR2(20)	NULL					
);

CREATE TABLE payment (
	payment_no	NUMBER	NOT NULL,								
	user_no	NUMBER	NOT NULL,										
	coupon_no	NUMBER	NOT NULL,								
	payment_cost	NUMBER	NOT NULL							
);

CREATE TABLE student (
	student_no	NUMBER	NOT NULL,								
	student_name	VARCHAR2(10)	NOT NULL,					
	student_birth	VARCHAR2(10)	NOT NULL,					
	student_gender	VARCHAR2(2)	NOT NULL,						
	student_email	VARCHAR2(30)	NOT NULL,					
	student_phone	VARCHAR2(11)	NOT NULL,					 
	student_class	VARCHAR2(5)	NOT NULL						
);


DROP TABLE MEMBER;
DROP SEQUENCE member_seq;

CREATE SEQUENCE member_seq;

CREATE TABLE member(
   member_no NUMBER PRIMARY KEY,                           
   member_name    VARCHAR2(500) NOT NULL,                  
   member_id  VARCHAR2(500)   NOT NULL,                     
   member_password    VARCHAR2(500) NOT NULL
);
INSERT INTO member VALUES(member_seq.NEXTVAL,'성원실','A','123');
SELECT * FROM member;

DROP SEQUENCE complain_board_seq;
DROP TABLE complain_board;




CREATE SEQUENCE complain_board_seq;
CREATE TABLE complain_board (
	complain_no	NUMBER	NOT NULL PRIMARY KEY,	
	complain_writer	VARCHAR2(500)	NOT NULL,	
	complain_title	VARCHAR2(500)	NOT NULL,				
	complain_content	VARCHAR2(3000)	NOT NULL,					
	complain_date_create	DATE	NOT NULL,			
	complain_date_update	DATE	NULL,
	complain_category	VARCHAR2(500)	NOT NULL,			
	complain_count	NUMBER	NULL,
	complain_like NUMBER NULL
);


INSERT INTO complain_board VALUES(complain_board_seq.NEXTVAL,'작성자이름','건의사항 글제목','건의사항 글내용',SYSDATE,SYSDATE,'맥주창고',0,0);

SELECT * FROM complain_board;






CREATE SEQUENCE review_board_seq;
CREATE TABLE review_board (
	review_no	NUMBER	NOT NULL PRIMARY KEY,	
	review_writer	VARCHAR2(500)	NOT NULL,	
	review_title	VARCHAR2(500)	NOT NULL,				
	review_content	VARCHAR2(3000)	NOT NULL,					
	review_date_create	DATE	NOT NULL,			
	review_date_update	DATE	NULL,
	review_category	VARCHAR2(500)	NOT NULL,			
	review_count	NUMBER	NULL,
	review_like NUMBER NULL
);

INSERT INTO review_board VALUES(review_board_seq.NEXTVAL,'작성자이름','이용후기 글제목','이용후기 글내용',SYSDATE,SYSDATE,'맥주창고',0,0);

SELECT * FROM review_board;
