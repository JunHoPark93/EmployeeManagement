package egovframework.controller.select.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import egovframework.controller.cmmn.CheckValue;
import egovframework.controller.select.service.SelectService;

@Controller
public class SelectController {

	@Resource(name="selectService")
	private SelectService selectService;
	
	@RequestMapping(value="select.do")
	public String initSelect(@RequestParam String pageName, ModelMap model) throws Exception {
		
		// url separation required
		/*System.out.println("pageName = "+pageName);
		String location = CheckValue.checkLocation(pageName);
		*/
		//System.out.println("location"  + location);
		
		System.out.println("pageNAme :   DFD FD DSF "  + pageName);
		String location = CheckValue.checkLocation(pageName);
		
		List<Map> empData = selectService.selectEmployeeData(location);
		System.out.println("select result : " + empData);
		model.addAttribute("empData", empData);
		
		return "select/select.tiles";
	}
	
	
	@RequestMapping(name="detail.do")
	public String initDetail(@RequestParam String ssn_num, ModelMap model) throws Exception {
		
		System.out.println("detail controller");
		
		System.out.println("ssn_num : " + ssn_num);
		
		// ssn number로 디비 조회해서 detail로 내리기
		// 3가지 트랜잭션 or Join??
		
		Map empAllData = selectService.getOnesAllData(ssn_num);
		
		System.out.println(empAllData.get("LOCATION")); // 대소문자 구분함
		
		model.addAttribute("empAllData", empAllData);
		
		//System.out.println("empAllData : " + empAllData);
		return "detail/detail.tiles";
	}
}
