package kh.coupon.mvc.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kh.coupon.mvc.biz.RegistBiz;
import kh.coupon.mvc.biz.ComplainBiz;
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


}
