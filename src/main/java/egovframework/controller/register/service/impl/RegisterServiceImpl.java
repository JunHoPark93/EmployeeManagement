package egovframework.controller.register.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.controller.register.service.RegisterService;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("registerService")
public class RegisterServiceImpl extends EgovAbstractServiceImpl implements RegisterService {

	@Resource(name="registerMapper")
	private RegisterMapper registerMapper;

	@Override
	public void insertEmployee(EmployeeVO employeeVO) throws Exception {
		System.out.println(employeeVO.toString());
		registerMapper.insertEmployee(employeeVO);
	}
	
	@Override
	public void insertEmployeeEducation(EmployeeHistoryVO employeeHistoryVO) throws Exception {
		System.out.println(employeeHistoryVO.toString());
		registerMapper.insertEmployeeEducation(employeeHistoryVO);
		
	}
	
	@Override
	public List<Map> selectData() throws Exception {
		return registerMapper.selectData();
	}




}
