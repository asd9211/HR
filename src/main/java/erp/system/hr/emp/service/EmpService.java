package erp.system.hr.emp.service;


import java.io.IOException;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import erp.system.hr.emp.vo.CareerVO;
import erp.system.hr.emp.vo.EmployeeVO;
import erp.system.hr.emp.vo.FamVO;
import erp.system.hr.emp.vo.LicenseVO;
import erp.system.hr.emp.vo.SchoolVO;
import erp.system.hr.util.vo.FileVO;

public interface EmpService {
	public List<EmployeeVO> getEmployees();
	public Map<String, Object> getEmployee(String empCode);
	public Optional<List<FamVO>> getFamInfo(String empCode);
	public Optional<List<SchoolVO>> getSchInfo(String empCode);
	public Optional<List<LicenseVO>> getLicInfo(String empCode);
	public Optional<List<CareerVO>> getCarInfo(String empCode);
	
	public Boolean addEmp(MultipartHttpServletRequest req)  throws IOException ;
	public Boolean addEmpBaseInfo(List<Map<String, String>> param, Optional<FileVO> profileVO);
	
	public Boolean modifyEmp(MultipartHttpServletRequest req)  throws IOException ;
	public Boolean modifyEmpBaseInfo(List<Map<String, String>> param, Optional<FileVO> profileVO);
	
	public Integer removeFamInfo(String empCode);
	public Integer removeSchInfo(String empCode);
	public Integer removeLicInfo(String empCode);
	public Integer removeCarInfo(String empCode);
	
}
 