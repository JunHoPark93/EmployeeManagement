package egovframework.controller.register.service.impl;

import java.util.List;
import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

/**
 * Register Employee
 * 
 * @author Jun Ho Park
 * RegisterMapper
 */
@Mapper("registerMapper")
public interface RegisterMapper {

	/**
	 * Insert Employee 
	 *
	 * @author Jun Ho Park
	 *
	 * @param employeeVO
	 * @throws Exception
	 */
	void insertEmployee(EmployeeVO employeeVO) throws Exception ;
	
	/**
	 * Insert Employee Education
	 *
	 * @author Jun Ho Park
	 *
	 * @param employeeEducationVO
	 * @throws Exception
	 */
	void insertEmployeeEducation(EmployeeEducationVO employeeEducationVO) throws Exception;
	
	/**
	 * Insert Employee WorkHistory
	 *
	 * @author Jun Ho Park
	 *
	 * @param employeeHistoryVO
	 * @throws Exception
	 */
	void insertEmployeeHistory(EmployeeHistoryVO employeeHistoryVO) throws Exception;
	
	/**
	 * For testing Data access speed
	 *
	 * @author Jun Ho Park
	 *
	 * @return
	 * @throws Exception
	 */
	List<Map> selectData() throws Exception;
	
	
	/**
	 * Update Employee 
	 *
	 * @author Jun Ho Park
	 *
	 * @param employeeVO
	 * @throws Exception
	 */
	void updateEmployee(EmployeeVO employeeVO) throws Exception;

	/**
	 * Update Employee Education
	 *
	 * @author Jun Ho Park
	 *
	 * @param employeeEducationVO
	 * @throws Exception
	 */
	void updateEmployeeEducation(EmployeeEducationVO employeeEducationVO) throws Exception;
	
	/**
	 * Update Employee WorkHistory
	 *
	 * @author Jun Ho Park
	 *
	 * @param employeeHistoryVO
	 * @throws Exception
	 */
	void updateEmployeeHistory(EmployeeHistoryVO employeeHistoryVO) throws Exception;
	
}
