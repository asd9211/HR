package erp.system.hr.emp.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;

import erp.system.hr.emp.vo.EmployeeVO;

public interface EmpService {

	public EmployeeVO getEmployee(String empCode);
	public Boolean empRegist(MultipartHttpServletRequest req) throws JsonMappingException, JsonProcessingException;
}
 