package egovframework.controller.login.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import egovframework.controller.login.service.LoginService;
import egovframework.controller.login.service.impl.CustomUserDetail;

@Controller
public class LoginController {
	
	@Resource(name="loginService")
	private LoginService loginService;
	
	@RequestMapping("/login.do")
	public String initLogin() throws Exception {
		System.out.println("here");
		return "login/login";
	}
	
	
	
	
	
	
	/*private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	

	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public void login(HttpSession session) {
		logger.info("Welcome login! {}", session.getId());
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public void logout(HttpSession session) {
		CustomUserDetail userDetails = (CustomUserDetail)session.getAttribute("userLoginInfo");
		
		logger.info("Welcome logout! {}, {}", session.getId(), userDetails.getUsername());
		
		
		session.invalidate();
	}
	
	@RequestMapping(value = "/login_success", method = RequestMethod.GET)
	public void login_success(HttpSession session) {
		CustomUserDetail userDetails = (CustomUserDetail)SecurityContextHolder.getContext().getAuthentication().getDetails();
		
		logger.info("Welcome login_success! {}, {}", session.getId(), userDetails.getUsername() + "/" + userDetails.getPassword());
		session.setAttribute("userLoginInfo", userDetails);
	}
	
	@RequestMapping(value = "page1", method = RequestMethod.GET)
	public void page1() {		
	}
	
	@RequestMapping(value = "/login_duplicate", method = RequestMethod.GET)
	public void login_duplicate() {		
		logger.info("Welcome login_duplicate!");
	}*/
}
