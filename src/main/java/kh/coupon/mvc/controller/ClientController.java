package kh.coupon.mvc.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kh.coupon.mvc.biz.ClientBiz;
import kh.coupon.mvc.biz.MemberBiz;
import kh.coupon.mvc.dto.ClientDto;
import kh.coupon.mvc.dto.MemberDto;

@Controller
@RequestMapping("client")
public class ClientController {
	
	@RequestMapping("test")
	public String test() {
		return "clientViews/clientControllerTest";
	}

	@Autowired
	private MemberBiz memeber_biz;
	@Autowired
	private ClientBiz client_biz;
	
	
	
	@RequestMapping("login")
	public String login(String member_id, String member_password, HttpSession session) {
		
		MemberDto dto = memeber_biz.login(member_id, member_password);
		if(dto != null) {
			session.setAttribute("client_dto", dto);
			
			return "clientViews/main";
		}
		
		return "index";
	}
	
	@RequestMapping("info")
	public String loginInfo(Model model, int member_no) {
		model.addAttribute("client_dto", memeber_biz.loginInfo(member_no));
		return "clientViews/info";
		
	}
	
	@RequestMapping("main")
	public String main() {
		return "main";
	}
	
	// insert
	@RequestMapping("insertform")
	public String insertForm() {
		return "clientViews/client_registrationForm";
	}

	
	@RequestMapping(value="insert", method=RequestMethod.POST)
	public String insert(Model model, ClientDto dto) {

		int res = client_biz.insert(dto);
		if(res > 0) {
			model.addAttribute("client_dto", client_biz.selectOne(dto.getMember_no()));
			return "clientViews/client_registration";
		}
		return "clientViews/client_registrationForm";	
		}
	

	
}





















