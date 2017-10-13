package egovframework.controller.login.service.impl;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("loginMapper")
public interface LoginMapper {

	public UserVO login(UserVO userVO) throws Exception;
}
