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
	public void insertDataTx(EmployeeVO employeeVO, EmployeeEducationVO employeeEducationVO
			,EmployeeHistoryVO employeeHistoryVO) throws Exception {
		
		// transaction applied
		registerMapper.insertEmployee(employeeVO);
		registerMapper.insertEmployeeEducation(employeeEducationVO); 
		//registerMapper.insertEmployeeHistory(employeeHistoryVO);

		
		System.out.println("insertDataTx");
		try {
			if(employeeHistoryVO.getEmp_nm() != null &&  employeeHistoryVO.getType() != null 
					&& employeeHistoryVO.getJob_title() != null) {
				System.out.println("work histroy ok");
				registerMapper.insertEmployeeHistory(employeeHistoryVO);
			}
		} catch(Exception e) {
			System.out.println("insertDataTx Exception");
			e.printStackTrace();
		}
	}

	@Override
	public void updateDataTx(EmployeeVO employeeVO, EmployeeEducationVO employeEducationVO,
			EmployeeHistoryVO employeeHistoryVO) throws Exception {
		
		
		
				// transaction applied
		
		// 여기서부터 업데이트 쿼리 시작 insert아님!
		
				//registerMapper.insertEmployee(employeeVO);
				//registerMapper.insertEmployeeEducation(employeEducationVO); 
		
		System.out.println("RegisterServiceImpl :  " + employeEducationVO);
		
		try {
			
			registerMapper.updateEmployeeEducation(employeEducationVO);
			
			System.out.println("컴퓨터 다 부수고싶다 염병" + employeeHistoryVO);

				
				System.out.println("updateDataTx");
				try {
					if(employeeHistoryVO.getEmp_nm() != null &&  employeeHistoryVO.getType() != null 
							&& employeeHistoryVO.getJob_title() != null) {
						System.out.println("work histroy ok");
						
			// 여긴 히스토리 부분 이니까 if문안에 타면 업데이트 시켜줘야 함 insert 아님!
						
						//registerMapper.insertEmployeeHistory(employeeHistoryVO);
						registerMapper.updateEmployeeHistory(employeeHistoryVO);
					}
				} catch(Exception e) {
					System.out.println("updateDataTx Exception");
					e.printStackTrace();
				}
				
				registerMapper.updateEmployee(employeeVO);
		}catch(Exception e ){ 
			e.printStackTrace();
		}
		
	}

/*	@Override
	public void insertDataWithoutWorkTx(EmployeeVO employeeVO, EmployeeEducationVO employeEducationVO) throws Exception {
		registerMapper.insertEmployee(employeeVO);
		registerMapper.insertEmployeeEducation(employeEducationVO); 
		//registerMapper.insertEmployeeHistory(employeeHistoryVO);

	}*/
}
