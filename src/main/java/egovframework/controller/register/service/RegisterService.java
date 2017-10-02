package egovframework.controller.register.service;

import java.util.List;
import java.util.Map;

import egovframework.controller.register.service.impl.EmployeeHistoryVO;
import egovframework.controller.register.service.impl.EmployeeVO;

public interface RegisterService {
	
	void insertEmployee(EmployeeVO employeeVO) throws Exception;
	
	void insertEmployeeEducation(EmployeeHistoryVO employeeHistoryVO) throws Exception;
	
	List<Map> selectData() throws Exception;
	
	

}
