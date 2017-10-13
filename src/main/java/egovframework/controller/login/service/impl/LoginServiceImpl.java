package egovframework.controller.login.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.controller.login.service.LoginService;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("loginService")
public class LoginServiceImpl extends EgovAbstractServiceImpl implements LoginService {

	@Resource(name="loginMapper")
	private LoginMapper loginMapper;

	@Override
	public UserVO login(UserVO userVO) throws Exception {
		return loginMapper.login(userVO);
	}
	
	
}
