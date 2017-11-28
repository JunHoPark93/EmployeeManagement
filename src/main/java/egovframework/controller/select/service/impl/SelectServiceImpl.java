package egovframework.controller.select.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.controller.select.service.SelectService;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("selectService")
public class SelectServiceImpl extends EgovAbstractServiceImpl implements SelectService {

	@Resource(name="selectMapper")
	private SelectMapper selectMapper;
	
	@Override
	public List<Map> selectEmployeeData(String location) throws Exception {
		return selectMapper.selectEmployeeData(location);
	}

	@Override
	public Map getOnesAllData(String ssn_num) throws Exception {
		return selectMapper.getOnesAllData(ssn_num);
	}

	@Override
	public Map getOnesAllDataExceptWorkHistory(String ssn_num) throws Exception {
		return selectMapper.getOnesAllDataExceptWorkHistory(ssn_num);
	}

	@Override
	public List<Map> getAllQuitEmployeeData() throws Exception {
		return selectMapper.getAllQuitEmployeeData();
	}

	@Override
	public void deleteOneEmployeeData(String ssn_num) throws Exception {
		selectMapper.deleteOneEmployeeData(ssn_num);
	}

	@Override
	public void revertOneEmployeeData(String ssn_num) throws Exception {
		selectMapper.revertOneEmployeeData(ssn_num);
	}

}
