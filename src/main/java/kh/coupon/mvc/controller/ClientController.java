package kh.coupon.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kh.coupon.mvc.biz.ComplainBiz;

@Controller
@RequestMapping("client")
public class ClientController {
	
	@Autowired
	private ComplainBiz complain_biz;
	
	@RequestMapping("clientMain")
	public String test() {
		return "clientViews/clientMain";
	}
	
	  @RequestMapping("complain_board_list")
	   public String complain_board_list(Model model) {
	      model.addAttribute("list",complain_biz.complain_list());
	      return "clientViews/complainBoardList";
	   }


}
