package egovframework.controller.register.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.controller.cmmn.CheckValue;
import egovframework.controller.register.service.RegisterService;
import egovframework.controller.register.service.impl.EmployeeVO;

@Controller
public class RegisterController {
	
	@Resource(name="registerService")
	private RegisterService registerService;

	@RequestMapping(value="register.do")
	public String initRegister(HttpServletRequest request) throws Exception {
		
		return "register/register.tiles";
	}
	
	@RequestMapping(value="complete.do")
	public String initComplete(HttpServletRequest request) throws Exception {
		System.out.println("in");
		
		EmployeeVO employeeVO = new EmployeeVO(); 

		try{
			String frst_nm = request.getParameter("frst_nm");
			String mddl_nm = request.getParameter("mddl_nm");
			String last_nm = request.getParameter("last_nm");
			String e_mail = request.getParameter("email");
			String ssn_num = request.getParameter("ssn_num");
			String street_addrs = request.getParameter("street_addrs");
			String city = request.getParameter("city");
			String state = request.getParameter("state");
			String zipcode = request.getParameter("zipcode");
			String home_tel = "33";
			String cel_tel = request.getParameter("cel_tel");
			String position = CheckValue.checkPosition(request.getParameter("position"));
			String work_style = CheckValue.checkWorkStyle(request.getParameter("work_style"));
			String location = CheckValue.checkLocation(request.getParameter("location"));
			
			System.out.println("relatedYn : " +request.getParameterValues("related"));

			String related_yn = CheckValue.checkRelated(request.getParameter("related"));
			String skills = request.getParameter("skills");
			
			String highschool = request.getParameter("highschool");
			System.out.println("adultYn : "+ request.getParameter("adult_yn"));
			String adult_yn = CheckValue.checkAdult(request.getParameter("adult_yn"));
			
			
			employeeVO = new EmployeeVO(ssn_num, last_nm, frst_nm, mddl_nm, street_addrs, 
					city, state, zipcode, home_tel, cel_tel, 
					e_mail, position, location, work_style, adult_yn, related_yn);
			
			System.out.println(employeeVO.toString());
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		try{
			//System.out.println(registerService.selectData());
			registerService.insertEmployee(employeeVO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		

		
		return "complete/complete.tiles";
	}
}
