package egovframework.controller.login.service;

import egovframework.controller.login.service.impl.UserVO;

public interface LoginService {
	
	UserVO login(UserVO userVO) throws Exception;

}
