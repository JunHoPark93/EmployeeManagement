package egovframework.controller.select.web;

import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import egovframework.controller.cmmn.CheckValue;
import egovframework.controller.select.service.SelectService;

@Controller
public class SelectController {

	@Resource(name = "selectService")
	private SelectService selectService;

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/select.do")
	public String initSelect(@RequestParam String pageName, ModelMap model) throws Exception {

		// url separation required
		/*
		 * System.out.println("pageName = "+pageName); String location =
		 * CheckValue.checkLocation(pageName);
		 */
		// System.out.println("location" + location);

		System.out.println("pageNAme :   DFD FD DSF " + pageName);
		String location = CheckValue.checkLocation(pageName);

		List<Map> empData = selectService.selectEmployeeData(location);
		
		for(int i=0; i<empData.size(); i++) {
			empData.get(i).put("POSITION", CheckValue.checkPositionReverse((String) empData.get(i).get("POSITION")));
		}
		
		System.out.println("select result : " + empData);
		model.addAttribute("empData", empData);

		return "select/select.tiles";
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(name="/detail.do")
	public String initDetail(@RequestParam String ssn_num, @RequestParam String option, ModelMap model) throws Exception {
		
		Map empAllData = null;

		try{
				System.out.println("detail controller");
				
				System.out.println("ssn_num : " + ssn_num);
				
				// ssn number로 디비 조회해서 detail로 내리기
				// 3가지 트랜잭션 or Join??
				
				empAllData = selectService.getOnesAllData(ssn_num);
				
				if(empAllData == null) {
					System.out.println("empAllData is null");
					
					empAllData = selectService.getOnesAllDataExceptWorkHistory(ssn_num);
				}
				
				// fucking ******************************
				
				if(empAllData.get("START_DT").toString().equals("1969-12-31")) {
					empAllData.put("START_DT", "none");
				}
				
				if(empAllData.get("END_DT").toString().equals("1969-12-31")) {
					empAllData.put("END_DT", "none");
				}

				// fucking ***********************
				
				
		
				
				System.out.println(empAllData.get("POSITION")); // 대소문자 구분함
				
				//empAllData.put("LOCATION", CheckValue.checkLocationReverse((String)empAllData.get("LOCATION")));
				
				String positionTemp = (String) empAllData.get("POSITION");
				int length = positionTemp.length();
				System.out.println("length :  " +length);
				char[] position = new char[length];
				String[] positionStringToView = new String[length];

				
				for(int i=0; i<positionTemp.length(); i++) {
					position[i] = positionTemp.charAt(i);
				}
				
				StringBuilder sb = new StringBuilder();
				
				for(int i=0; i<position.length; i++) {
					sb.append(CheckValue.checkPositionReverse(""+position[i]));
					positionStringToView[i] = CheckValue.checkPositionReverse(""+position[i]);
					if(i==position.length-1)
						break;
					sb.append(", ");
				}
				
				String positionString = sb.toString();
				System.out.println("결과값 :  " + positionString);
				
				for(int i=0; i<positionStringToView.length; i++) {
					System.out.println("뷰로 뿌릴 배열 :  " +positionStringToView[i]);
				}
				
				//empAllData.put("POSITION", CheckValue.checkPositionReverse((String)empAllData.get("POSITION")));
				//empAllData.put("WORK_STYLE", CheckValue.checkWorkStyleReverse((String)empAllData.get("WORK_STYLE")));
				//empAllData.put("LOCATION", CheckValue.checkLocationReverse((String)empAllData.get("LOCATION")));
				//empAllData.put("EDU_CODE", CheckValue.CheckEduCodeReverse((String)empAllData.get("EDU_CODE")));
				
				model.addAttribute("positionStringToView", positionStringToView); // 이건 셀렉박스용
				
				
				//System.out.println("fucking : " + CheckValue.CheckEduCodeReverse((String)empAllData.get("EDU_CODE")));
				model.addAttribute("work_style", CheckValue.checkWorkStyleReverse((String)empAllData.get("WORK_STYLE")));
				model.addAttribute("location", CheckValue.checkLocationReverse((String)empAllData.get("LOCATION")));
				model.addAttribute("edu_code", CheckValue.CheckEduCodeReverse((String)empAllData.get("EDU_CODE")));
				model.addAttribute("position", positionString);
				model.addAttribute("empAllData", empAllData);
				
				//System.out.println("empAllData : " + empAllData);
				
				if(option.equals("detail")) 
					return "detail/detail.tiles";
				else if(option.equals("update"))
					return "update/update.tiles";
				else
					return "error/error.tiles";
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return "";
	}
	
	@RequestMapping(value="out.do")
	public String initOut(ModelMap model) throws Exception {
		List<Map> empData = selectService.getAllQuitEmployeeData();

		model.addAttribute("select", "quit");
		model.addAttribute("empData", empData);
		
		return "out/out.tiles";
	}
	
	@RequestMapping(value="delete.do")
	public String initDelete(HttpServletResponse response ,@RequestParam String ssn_num, ModelMap model) throws Exception {
		
		selectService.deleteOneEmployeeData(ssn_num); // delete one's data
		
		//PrintWriter out = null;
		//response.setCharacterEncoding("UTF-8");
		//out = response.getWriter();
		//out.write(JsonUtil.);
		
		List<Map> empData = selectService.getAllQuitEmployeeData();
		model.addAttribute("select", "quit");
		model.addAttribute("empData", empData);
		
		return "out/out.tiles";
	}
	
	@RequestMapping(value="revert.do")
	public String initRevert(@RequestParam String ssn_num, ModelMap model) throws Exception {
		selectService.revertOneEmployeeData(ssn_num);
		
		List<Map> empData = selectService.getAllQuitEmployeeData();
		model.addAttribute("select", "quit");
		model.addAttribute("empData", empData);
		
		return "out/out.tiles";
	}
		
}
