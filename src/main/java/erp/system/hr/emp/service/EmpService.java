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
	public @ResponseBody List<EmployeeVO> getEmployees();
	public Map<String, Object> getEmployee(String empCode);
	public Optional<List<FamVO>> getFamInfo(String empCode);
	public Optional<List<SchoolVO>> getSchInfo(String empCode);
	public Optional<List<LicenseVO>> getLicInfo(String empCode);
	public Optional<List<CareerVO>> getCarInfo(String empCode);
	
	public Boolean empRegist(MultipartHttpServletRequest req)  throws IOException ;
	public Boolean empBaseInfoRegist(List<Map<String, String>> param, Optional<FileVO> profileVO);
	
	public Boolean empModify(MultipartHttpServletRequest req)  throws IOException ;
	public Boolean empBaseInfoModify(List<Map<String, String>> param, Optional<FileVO> profileVO);
	
	public Integer deleteFamInfo(String empCode);
	public Integer deleteSchInfo(String empCode);
	public Integer deleteLicInfo(String empCode);
	public Integer deleteCarInfo(String empCode);
	
}
 