package erp.system.hr.apt.service;

import java.util.List;

import erp.system.hr.apt.vo.AptmntVO;

public interface AptService {

	public Integer addAppointment(AptmntVO aptVo);
	public List<AptmntVO> getAppointments();
	public List<AptmntVO> getAppointmentByName(String empName);
}
