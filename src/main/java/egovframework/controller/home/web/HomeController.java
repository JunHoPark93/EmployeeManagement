package egovframework.controller.home.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping(value="/home.do")
	public String initHome() throws Exception {
		System.out.println("home");
		
		return "home/home";
	}
}
