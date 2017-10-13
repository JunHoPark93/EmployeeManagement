package egovframework.controller.select.service;

import java.util.List;
import java.util.Map;

public interface SelectService {

	List<Map> selectEmployeeData(String location) throws Exception;
	
	Map getOnesAllData(String ssn_num) throws Exception; // Detail select

}
