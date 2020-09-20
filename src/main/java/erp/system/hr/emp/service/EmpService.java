package erp.system.hr.emp.service;

import erp.system.hr.emp.vo.EmployeeVO;

public interface EmpService {

	public EmployeeVO getEmployee(String empCode);
	public Integer empRegist(EmployeeVO emp);
}
 