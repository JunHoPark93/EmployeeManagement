package egovframework.controller.register.web;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.controller.cmmn.CheckValue;
import egovframework.controller.register.service.RegisterService;
import egovframework.controller.register.service.impl.EmployeeEducationVO;
import egovframework.controller.register.service.impl.EmployeeHistoryVO;
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
		EmployeeEducationVO employeEducationVO = new EmployeeEducationVO();
		EmployeeHistoryVO employeeHistoryVO = new EmployeeHistoryVO();
		
		DateFormat df = new SimpleDateFormat("MM/dd/yyyy");
		
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
			String home_tel = request.getParameter("home_tel");
			String cel_tel = request.getParameter("cel_tel");
			String work_start_dt_str = request.getParameter("work_start_dt");
			
			Date work_start_dt = df.parse(work_start_dt_str);
			
			//System.out.println(request.getParameter("position"));
			String[] arr = request.getParameterValues("position");
			String position = new String();
			for(int i=0; i<arr.length; i++) {
				System.out.println(arr[i]);
				position += CheckValue.checkPosition(arr[i]);
			}
			System.out.println("position : "+position);
			
			//String position = CheckValue.checkPosition(request.getParameter("position"));
			String work_style = CheckValue.checkWorkStyle(request.getParameter("work_style"));
			String location = CheckValue.checkLocation(request.getParameter("location"));
			
			//System.out.println("relatedYn : " +request.getParameterValues("related"));

			String related_yn = CheckValue.checkRelated(request.getParameter("related"));
			String skills = request.getParameter("skills");			
			//System.out.println("adultYn : "+ request.getParameter("adult_yn"));
			String adult_yn = CheckValue.checkAdult(request.getParameter("adult_yn"));
			
			/**
			 *  EmployeeEducation
			 */
			String high_yn = CheckValue.checkHighSchool(request.getParameter("highschool"));
			String school_name = request.getParameter("school_name");
			String major = request.getParameter("major");
			String grade = request.getParameter("grade");
			String edu_code = CheckValue.CheckEduCode(request.getParameter("edu_code"));
		
			
			
			/**
			 *  Work Experience
			 */
			String emp_name = request.getParameter("emp_nm");
			String type = request.getParameter("type");
			String job_title = request.getParameter("job_title");
			String start_dt_str = request.getParameter("start_dt");
			
			
			Date start_dt = df.parse(start_dt_str);
			System.out.println(start_dt_str);
			System.out.println(start_dt);
			
			String end_dt_str = request.getParameter("end_dt");
			Date end_dt = df.parse(end_dt_str);
			System.out.println(end_dt_str);
			System.out.println(end_dt);
			
			String work = request.getParameter("work");
			String reason = request.getParameter("reason");
			
			System.out.println("sibal " + emp_name + " " + type + "  " + job_title);
			employeeVO = new EmployeeVO(ssn_num, last_nm, frst_nm, mddl_nm, street_addrs, 
					city, state, zipcode, home_tel, cel_tel, e_mail, work_start_dt, position, 
					location, work_style, adult_yn, related_yn, skills);
			
			employeEducationVO = new EmployeeEducationVO(ssn_num, school_name, high_yn, edu_code, major, grade);
			
			System.out.println(employeeHistoryVO);
			
			if(emp_name != null && type != null && job_title != null) {
				System.out.println("타냐");
				employeeHistoryVO = new EmployeeHistoryVO(ssn_num, emp_name, type, job_title, 
						start_dt, end_dt, work, reason);
			}
			
			System.out.println(employeeHistoryVO.toString());
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// test
		//registerService.insertEmployeeTx(employeeVO);
		//registerService.insertEmployeeEducationTx(employeEducationVO);
		
		registerService.insertDataTx(employeeVO, employeEducationVO, employeeHistoryVO);
		
/*		
		try{
			//System.out.println(registerService.selectData());
			registerService.insertEmployeeTx(employeeVO);
			registerService.insertEmployeeEducationTx(employeEducationVO);
		} catch (Exception e) {
			System.out.println("여기진입");
			e.printStackTrace();
			//TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
		}*/
		
/*		try {
			registerService.insertEmployeeEducation(employeEducationVO);
		} catch (Exception e) {
			e.printStackTrace();
		}*/
		

		
		return "complete/complete.tiles";
	}
}
