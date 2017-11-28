package egovframework.controller.select.service.impl;

import java.util.List;
import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

/**
 * @author Jun Ho Park
 * SelectMapper
 */
@Mapper("selectMapper")
public interface SelectMapper {
	
	/**
	 * Select all data from T_EMPLOYEE
	 *
	 * @author Jun Ho Park
	 *
	 * @param location
	 * @return
	 * @throws Exception
	 */
	List<Map> selectEmployeeData(String location) throws Exception;
	
	/**
	 * Select all data from T_EMPOLYEE, T_WORK_HIST, T_EDUCATION
	 *
	 * @author Jun Ho Park
	 *
	 * @param ssn_num
	 * @return
	 * @throws Exception
	 */
	Map getOnesAllData(String ssn_num) throws Exception;
	
	/**
	 * Select all data from T_EMPLYEE, T_EDUCATION
	 *
	 * @author Jun Ho Park
	 *
	 * @param ssn_num
	 * @return
	 * @throws Exception
	 */
	Map getOnesAllDataExceptWorkHistory(String ssn_num) throws Exception;
	
	
	/**
	 * Select all quit employee data from T_EMPLOYEE
	 *
	 * @author Jun Ho Park
	 *
	 * @return
	 * @throws Exception
	 */
	List<Map> getAllQuitEmployeeData() throws Exception;
	
	/**
	 * Delete certain employee from T_EMPLOYEE
	 *
	 * @author Jun Ho Park
	 *
	 * @throws Exception
	 */
	void deleteOneEmployeeData(String ssn_num) throws Exception;
	
	/**
	 * Revert certain employee from T_EMPLOYEE
	 *
	 * @author Jun Ho Park
	 *
	 * @param ssn_num
	 * @throws Exception
	 */
	void revertOneEmployeeData(String ssn_num) throws Exception;

}
