package kh.coupon.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kh.coupon.mvc.biz.RegistBiz;
import kh.coupon.mvc.biz.ComplainBiz;
import kh.coupon.mvc.dto.ComplainDto;
import kh.coupon.mvc.dto.RegistDto;

@Controller
@RequestMapping("client")
public class ClientController {

	@Autowired
	private RegistBiz regist_biz;
	@Autowired
	private ComplainBiz complain_biz;

	
	@RequestMapping("clientMain")
	public String test() {
		return "clientViews/clientMain";
	}

	@RequestMapping(value = "registform")
	public String registform() {
		return "clientViews/clientRegist";
	}

	@RequestMapping(value = "regist_insert", method = RequestMethod.POST)
	public String regist_insert(Model model, RegistDto regist_dto) {
		int res = regist_biz.regist_insert(regist_dto);
		if (res > 0) {
			model.addAttribute("list", regist_biz.regist_list());
			return "clientViews/clientRegist_list";
		} else {
			return "clientViews/clientRegist";
		}
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(Model model, String member_id, String member_password, HttpSession session) {
		RegistDto regist_dto = regist_biz.login(member_id, member_password);
		if (regist_dto != null) {
			session.setAttribute("regist_dto", regist_dto);
			return "clientViews/clientMain";
		} else {
			return "index";
		}
	}

	@RequestMapping(value ="complain_board_list")
	public String complain_board_list(Model model) {
		model.addAttribute("list", complain_biz.complain_list());
		return "clientViews/complainBoardList";
	}
	
	   
	   @RequestMapping("complain_detail")
	   public String complain_detail(Model model,int complain_no) {
		   complain_biz.updateHit(complain_no);
	      model.addAttribute("dto",complain_biz.complain_detail(complain_no));
	      return "clientViews/complainBoardDetail";
	   }
	   
	   
		// 후기게시판에서 제휴업체 구분 검색
		@RequestMapping("complain_search")
		public String complain_search(Model model,HttpServletRequest request) {
			String condition = request.getParameter("condition");
			System.out.println("제휴업체구분 : " +condition);
			if(condition.equals("7Gram")) {
				model.addAttribute("list", complain_biz.complain_list_seven());			
			} else if(condition.equals("맥주창고")) {
				model.addAttribute("list", complain_biz.complain_list_bear());
			} else if(condition.equals("요술포차")) {
				model.addAttribute("list", complain_biz.complain_list_magic());
			} else if(condition.equals("전체")){
				model.addAttribute("list", complain_biz.complain_list());
			}
			return "clientViews/complainBoardList";
		}
	   
	   @RequestMapping(value="complain_insertform")
	   public String complain_insertform() {
	      return "clientViews/complainBoardInsert";
	   }
	   
		
	   @RequestMapping(value="complain_insert", method=RequestMethod.POST)
		public String complain_insert(Model model,ComplainDto complain_dto,HttpServletRequest request) {
			String condition = request.getParameter("condition");
			System.out.println("건의사항 작성시 selected 값 : "+condition);
			int res = complain_biz.complain_insert(complain_dto);
			if(res>0) {
				model.addAttribute("list",complain_biz.complain_list());
				return "clientViews/complainBoardList";
			} else {
				return "clientViews/complainBoardInsert";
			}
		}
	   
	   @RequestMapping("complain_updateform")
	   public String complain_updateform(Model model,int complain_no) {
	      model.addAttribute("dto",complain_biz.complain_detail(complain_no));
	      System.out.println(complain_no);
	      return "clientViews/complainBoardUpdate";
	   }
	   
	   @RequestMapping(value="complain_update", method=RequestMethod.POST)
	   public String complain_update(Model model,ComplainDto complain_dto,int complain_no) {
	      int res = complain_biz.complain_update(complain_dto);
	      if(res>0) {
	         model.addAttribute("dto",complain_biz.complain_detail(complain_no));
	         return "clientViews/complainBoardDetail";
	      } else {
	         return "clientViews/complainBoardUpdate";
	      }
	   }
	   
	   @RequestMapping("complain_delete")
	   public String complain_delete(Model model,int complain_no) {
		   complain_biz.complain_delete(complain_no);
	      model.addAttribute("list",complain_biz.complain_list());
	      return "clientViews/complainBoardList";
	   }



}
