package egovframework.controller.select.service.impl;

import java.util.List;
import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("selectMapper")
public interface SelectMapper {
	List<Map> selectEmployeeData(String location) throws Exception;
	
	Map getOnesAllData(String ssn_num) throws Exception;

}
