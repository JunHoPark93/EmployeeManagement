package egovframework.controller.register.web;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.sql.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.controller.cmmn.CheckValue;
import egovframework.controller.register.service.RegisterService;
import egovframework.controller.register.service.impl.EmployeeEducationVO;
import egovframework.controller.register.service.impl.EmployeeHistoryVO;
import egovframework.controller.register.service.impl.EmployeeVO;

@Controller
public class RegisterController {
	
	private static Logger logger = LoggerFactory.getLogger(RegisterController.class);
	
	@Resource(name="registerService")
	private RegisterService registerService;

	@RequestMapping(value="register.do")
	public String initRegister(HttpServletRequest request) throws Exception {
		
		return "register/register.tiles";
	}
	
	@RequestMapping(value="complete.do")
	public String initComplete(HttpServletRequest request, ModelMap model) throws Exception {
		
		EmployeeVO employeeVO = new EmployeeVO(); 
		EmployeeEducationVO employeEducationVO = new EmployeeEducationVO();
		EmployeeHistoryVO employeeHistoryVO = new EmployeeHistoryVO();
		
		DateFormat df = new SimpleDateFormat("MM/dd/yyyy");
		
		try{
			
			/**
			 *  Employee VO
			 */
			String frst_nm = request.getParameter("frst_nm");
			String mddl_nm = request.getParameter("mddl_nm");
			String last_nm = request.getParameter("last_nm");
			String e_mail = request.getParameter("email");
			String[] ssn_num_array = request.getParameterValues("ssn_num");
			String ssn_num = new String();
			for(int i=0; i<3; i++) {
				ssn_num += ssn_num_array[i];
			}
			
			String street_addrs = request.getParameter("street_addrs");
			String city = request.getParameter("city");
			String state = request.getParameter("state");
			String zipcode = request.getParameter("zipcode");
			String home_tel = request.getParameter("home_tel");
			String cel_tel = request.getParameter("cel_tel");
			String work_start_dt_str = request.getParameter("work_start_dt");
			
			Date work_start_dt = new java.sql.Date(df.parse(work_start_dt_str).getTime());				
			
			//System.out.println(request.getParameter("position"));
			String[] arr = request.getParameterValues("position");
			String position = new String();
			
			for(int i=0; i<arr.length; i++) {
				position += CheckValue.checkPosition(arr[i]);
			}
			
			//String position = CheckValue.checkPosition(request.getParameter("position"));
			String work_style = CheckValue.checkWorkStyle(request.getParameter("work_style"));
			String location = CheckValue.checkLocation(request.getParameter("location"));
			
			//System.out.println("relatedYn : " +request.getParameterValues("related"));

			String related_yn = CheckValue.checkRelated(request.getParameter("related"));
			String skills = request.getParameter("skills");			
			//System.out.println("adultYn : "+ request.getParameter("adult_yn"));
			String adult_yn = CheckValue.checkAdult(request.getParameter("adult_yn"));
			
			//session name
			Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
			String regi_nm = authentication.getName();
			
			employeeVO = new EmployeeVO(ssn_num, last_nm, frst_nm, mddl_nm, street_addrs, 
					city, state, zipcode, home_tel, cel_tel, e_mail, work_start_dt, position, 
					location, work_style, adult_yn, related_yn, skills, regi_nm);
			
			/**
			 *  EmployeeEducation
			 */
			String high_yn = CheckValue.checkHighSchool(request.getParameter("highschool"));
			String school_name = request.getParameter("school_name");
			String major = request.getParameter("major");
			String grade = request.getParameter("grade");
			String edu_code = CheckValue.CheckEduCode(request.getParameter("edu_code"));
			
			employeEducationVO = new EmployeeEducationVO(ssn_num, school_name, high_yn, edu_code, major, grade, regi_nm);

		
			/**
			 *  Work Experience
			 */
			
			
			String emp_name = request.getParameter("emp_nm");
			String type = request.getParameter("type");
			String job_title = request.getParameter("job_title");
			String start_dt_str = request.getParameter("start_dt");
			String end_dt_str = request.getParameter("end_dt");
						
			if(emp_name.equals("")) {
				System.out.println("correct");
			}
			
			if(!emp_name.equals("") && !type.equals("") && !job_title.equals("") && !start_dt_str.equals("") && !end_dt_str.equals("")) {
				
				/*Date start_dt = (Date) df.parse(start_dt_str);		
				
				Date end_dt = (Date) df.parse(end_dt_str);*/
				Date start_dt_str_parsed = new java.sql.Date(df.parse(start_dt_str).getTime());
				Date end_dt_str_parsed = new java.sql.Date(df.parse(end_dt_str).getTime());
				
				String work = request.getParameter("work");
				String reason = request.getParameter("reason");
	
				employeeHistoryVO = new EmployeeHistoryVO(ssn_num, emp_name, type, job_title, 
						start_dt_str_parsed, end_dt_str_parsed, work, reason, regi_nm);
				
				logger.info("employeeVO : " + employeeVO);
				logger.info("employeeHistoryVO : " + employeeHistoryVO);
				logger.info("employeeEducationVO : " + employeEducationVO);
				
				registerService.insertDataTx(employeeVO, employeEducationVO, employeeHistoryVO);
				
			} else {
				
				employeeHistoryVO = new EmployeeHistoryVO(ssn_num, "none", "none", "none", new Date(0), new Date(0), "none", "none", regi_nm);
				
				logger.info("employeeVO : " + employeeVO);
				logger.info("employeeHistoryVO : " + employeeHistoryVO);
				logger.info("employeeEducationVO : " + employeEducationVO);
				
				registerService.insertDataTx(employeeVO, employeEducationVO, employeeHistoryVO);
			}
		
			model.addAttribute("ssn_num", ssn_num); // image upload
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "main/main.tiles";
		//return "upload/upload.tiles";
	}
	
	@RequestMapping(value="updateEmp.do")
	public String initUpdate(HttpServletRequest request, ModelMap model) throws Exception {
	
		EmployeeVO employeeVO = new EmployeeVO(); 
		EmployeeEducationVO employeEducationVO = new EmployeeEducationVO();
		EmployeeHistoryVO employeeHistoryVO = new EmployeeHistoryVO();
		
		
		try{
			
			/**
			 *  Employee VO
			 */
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
			
			//Date work_start_dt = df.parse(work_start_dt_str);
			
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
			
			Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
			String regi_nm = authentication.getName();
			
			employeeVO = new EmployeeVO(ssn_num, last_nm, frst_nm, mddl_nm, street_addrs, 
					city, state, zipcode, home_tel, cel_tel, e_mail, null, position, 
					location, work_style, adult_yn, related_yn, skills, regi_nm);
			
			/**
			 *  EmployeeEducation
			 */
			String high_yn = CheckValue.checkHighSchool(request.getParameter("highschool"));
			String school_name = request.getParameter("school_name");
			String major = request.getParameter("major");
			String grade = request.getParameter("grade");
			String edu_code = CheckValue.CheckEduCode(request.getParameter("edu_code"));
			
			employeEducationVO = new EmployeeEducationVO(ssn_num, school_name, high_yn, edu_code, major, grade, regi_nm);

		
			
			
			/**
			 *  Work Experience
			 */
			
			
			String emp_name = request.getParameter("emp_nm");
			String type = request.getParameter("type");
			String job_title = request.getParameter("job_title");
			String start_dt_str = request.getParameter("start_dt");
			String end_dt_str = request.getParameter("end_dt");
			
			System.out.println(end_dt_str + "and"+start_dt_str);
			
			if(emp_name.equals("")) {
				System.out.println("correct");
			}
			
			if(!emp_name.equals("") && !type.equals("") && !job_title.equals("") && !start_dt_str.equals("") 
					&& !end_dt_str.equals("") && !emp_name.equals("none") && !type.equals("none") 
					&& !job_title.equals("none") && !start_dt_str.equals("none") && !end_dt_str.equals("none")) {
				//Date start_dt = df.parse(start_dt_str);
				System.out.println(start_dt_str);
				//System.out.println(start_dt);
				
				
				//Date end_dt = df.parse(end_dt_str);
				//System.out.println(end_dt_str);
				//System.out.println(end_dt);
				
				String work = request.getParameter("work");
				String reason = request.getParameter("reason");
				
				System.out.println("yaho! " + emp_name + " " + type + "  " + job_title);
				
				DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
								
				Date start_dt_str_parsed = new java.sql.Date(df.parse(start_dt_str).getTime());
				Date end_dt_str_parsed = new java.sql.Date(df.parse(end_dt_str).getTime());
				
				employeeHistoryVO = new EmployeeHistoryVO(ssn_num, emp_name, type, job_title, 
						start_dt_str_parsed, end_dt_str_parsed, work, reason, regi_nm);
				
				System.out.println(employeeHistoryVO);

				
				registerService.updateDataTx(employeeVO, employeEducationVO, employeeHistoryVO);
				//registerService.insertDataTx(employeeVO, employeEducationVO, employeeHistoryVO);
				
			} else {
				//registerService.insertDataTx(employeeVO, employeEducationVO, employeeHistoryVO);
				//employeeHistoryVO = new EmployeeHistoryVO(ssn_num, "none", "none", "none", new Date(0), new Date(0), "none", "none", regi_nm);

				registerService.updateDataTx(employeeVO, employeEducationVO, employeeHistoryVO);
			}
						
			model.addAttribute("ssn_num", ssn_num); // image upload

			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "upload/upload.tiles";
	}
}
