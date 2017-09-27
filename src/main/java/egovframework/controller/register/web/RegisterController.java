package egovframework.controller.register.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.controller.register.service.RegisterService;

@Controller
public class RegisterController {
	
	@Resource(name="registerService")
	private RegisterService registerService;

	@RequestMapping(value="register.do")
	public String initRegister(HttpServletRequest request) throws Exception {
		
		return "register/register.tiles";
	}
}
