package erp.system.hr.emp.service;

import java.util.List;
import java.util.Map;

import erp.system.hr.emp.vo.EmployeeVO;

public interface EmpService {

	public EmployeeVO getEmployee(String empCode);
	public Boolean empRegist(Map<String,List<Map<String,String>>> param);
}
 