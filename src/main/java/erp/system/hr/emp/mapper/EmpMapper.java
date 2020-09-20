package erp.system.hr.emp.mapper;

import org.apache.ibatis.annotations.Mapper;

import erp.system.hr.emp.vo.EmployeeVO;

@Mapper
public interface EmpMapper {

	public EmployeeVO getEmployee(String empCode);
	public Integer insertEmployee(EmployeeVO emp);
}
 