package egovframework.controller.register.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import egovframework.controller.register.service.RegisterService;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("registerService")
public class RegisterServiceImpl extends EgovAbstractServiceImpl implements RegisterService {

	@Resource(name="registerMapper")
	private RegisterMapper registerMapper;

	@Override
	public void insertEmployeeTx(EmployeeVO employeeVO) throws Exception {
		System.out.println(employeeVO.toString());
		registerMapper.insertEmployee(employeeVO);
	}
	
	@Override
	public void insertEmployeeEducationTx(EmployeeEducationVO employeeEducationVO) throws Exception {
		System.out.println(employeeEducationVO.toString());
		registerMapper.insertEmployeeEducation(employeeEducationVO);
		//throw new Exception(); // 의도적으로 예외 발생시킴
	}
	
	@Override
	public List<Map> selectData() throws Exception {
		return registerMapper.selectData();
	}

	@Override
	public void insertDataTx(EmployeeVO employeeVO, EmployeeEducationVO employeeEducationVO) throws Exception {
		
		// transaction applied
		registerMapper.insertEmployee(employeeVO);
		registerMapper.insertEmployeeEducation(employeeEducationVO); 
	}




}
