package erp.system.hr.emp.service;


import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;

import erp.system.hr.emp.vo.CareerVO;
import erp.system.hr.emp.vo.EmployeeVO;
import erp.system.hr.emp.vo.FamVO;
import erp.system.hr.emp.vo.LicenseVO;
import erp.system.hr.emp.vo.SchoolVO;

public interface EmpService {

	public Map<String, Object> getEmployee(String empCode);
	public Boolean empRegist(MultipartHttpServletRequest req)  throws IOException ;
	public List<FamVO> getFamInfo(String empCode);
	public List<SchoolVO> getSchInfo(String empCode);
	public List<LicenseVO> getLicInfo(String empCode);
	public List<CareerVO> getCarInfo(String empCode);
}
 