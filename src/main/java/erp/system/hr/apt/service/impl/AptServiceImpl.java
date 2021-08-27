package erp.system.hr.apt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import erp.system.hr.apt.mapper.AptMapper;
import erp.system.hr.apt.service.AptService;
import erp.system.hr.apt.vo.AptmntVO;

@Service
public class AptServiceImpl implements AptService {

	private final AptMapper am;
	
	AptServiceImpl(@Autowired AptMapper am){
		this.am = am;
	}
	
	@Override
	public Integer aptRegist(AptmntVO aptVo) {
		return am.insertAppointment(aptVo);
	}

	@Override
	public List<AptmntVO> getAppointments() {
		return am.getAppointments();
	}

	@Override
	public List<AptmntVO> getAppointmentByName(String empName) {
		return am.getAppointmentByName(empName);
	}

}
