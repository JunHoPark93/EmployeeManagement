package egovframework.controller.register.service.impl;

import java.util.List;
import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("registerMapper")
public interface RegisterMapper {

	void insertEmployee(EmployeeVO employeeVO) throws Exception ;
	
	void insertEmployeeEducation(EmployeeEducationVO employeeEducationVO) throws Exception;
	
	void insertEmployeeHistory(EmployeeHistoryVO employeeHistoryVO) throws Exception;
	
	List<Map> selectData() throws Exception;
	
	//void insertData(EmployeeVO employeeVO, EmployeeEducationVO employeeEducationVO) throws Exception ;
	
	void updateEmployee(EmployeeVO employeeVO) throws Exception;

	void updateEmployeeEducation(EmployeeEducationVO employeeEducationVO) throws Exception;
	
	void updateEmployeeHistory(EmployeeHistoryVO employeeHistoryVO) throws Exception;
	
}
