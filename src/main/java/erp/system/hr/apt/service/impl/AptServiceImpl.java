package erp.system.hr.apt.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import erp.system.hr.apt.mapper.AptMapper;
import erp.system.hr.apt.service.AptService;

@Service
public class AptServiceImpl implements AptService {

	private final AptMapper am;
	
	AptServiceImpl(@Autowired AptMapper am){
		this.am = am;
	}
	
	@Override
	public Integer aptRegist() {
		return am.insertAppointment();
	}

}
