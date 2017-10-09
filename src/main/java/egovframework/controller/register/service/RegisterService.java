package egovframework.controller.register.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import egovframework.controller.register.service.impl.EmployeeEducationVO;
import egovframework.controller.register.service.impl.EmployeeHistoryVO;
import egovframework.controller.register.service.impl.EmployeeVO;

public interface RegisterService {
	
	void insertEmployeeTx(EmployeeVO employeeVO) throws Exception;
	
	void insertEmployeeEducationTx(EmployeeEducationVO employeeEducationVO) throws Exception;
	
	List<Map> selectData() throws Exception;
	
	
	void insertDataTx(EmployeeVO employeeVO, EmployeeEducationVO employeeEducationVO,
			EmployeeHistoryVO employeeHistoryVO) throws Exception;
	
	

}
