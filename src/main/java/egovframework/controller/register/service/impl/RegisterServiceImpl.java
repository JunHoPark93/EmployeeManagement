package egovframework.controller.register.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.controller.register.service.RegisterService;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("registerService")
public class RegisterServiceImpl extends EgovAbstractServiceImpl implements RegisterService {

	@Resource(name="registerMapper")
	private RegisterMapper registerMapper;
	
	
}
