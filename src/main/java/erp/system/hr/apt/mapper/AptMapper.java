package erp.system.hr.apt.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import erp.system.hr.apt.vo.AptmntVO;

@Mapper
public interface AptMapper {
	
	public int insertAppointment(AptmntVO aptVo);
	public List<AptmntVO> getAppointments();
	public List<AptmntVO> getAppointmentByName(String empName);

}
