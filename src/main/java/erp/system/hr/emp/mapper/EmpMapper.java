package erp.system.hr.emp.mapper;

import org.apache.ibatis.annotations.Mapper;

import erp.system.hr.emp.vo.CareerVO;
import erp.system.hr.emp.vo.EmployeeVO;
import erp.system.hr.emp.vo.FamVO;
import erp.system.hr.emp.vo.LicenseVO;
import erp.system.hr.emp.vo.SchoolVO;

@Mapper
public interface EmpMapper {

	public EmployeeVO getEmployee(String empCode);
	public Integer insertEmployee(EmployeeVO emp);
	public Integer insertFamInfo(FamVO fam);
	public Integer insertSchoolInfo(SchoolVO svo);
	public Integer insertLicenseInfo(LicenseVO lvo);
	public Integer insertCareerInfo(CareerVO cvo);
}
 