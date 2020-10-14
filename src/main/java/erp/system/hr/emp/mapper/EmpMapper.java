package erp.system.hr.emp.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import erp.system.hr.emp.vo.CareerVO;
import erp.system.hr.emp.vo.EmployeeVO;
import erp.system.hr.emp.vo.FamVO;
import erp.system.hr.emp.vo.LicenseVO;
import erp.system.hr.emp.vo.SchoolVO;

@Mapper
public interface EmpMapper {

	public List<EmployeeVO> getEmployees();
	public EmployeeVO getEmployee(String empCode);
	public List<FamVO> getFamInfo(String empCode);
	public List<SchoolVO> getSchInfo(String empCode);
	public List<LicenseVO> getLicInfo(String empCode);
	public List<CareerVO> getCarInfo(String empCode);
	
	public Integer insertEmployee(EmployeeVO emp);
	public Integer insertFamInfo(FamVO fam);
	public Integer insertSchoolInfo(SchoolVO svo);
	public Integer insertLicenseInfo(LicenseVO lvo);
	public Integer insertCareerInfo(CareerVO cvo);
	
	public Integer updateEmployee(EmployeeVO emp);
	
	
	public Integer deleteFamInfo(String empCode);
	public Integer deleteSchInfo(String empCode);
	public Integer deleteLicInfo(String empCode);
	public Integer deleteCarInfo(String empCode);
	
}
 