package erp.system.hr.emp.service.impl;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import erp.system.hr.emp.mapper.EmpMapper;
import erp.system.hr.emp.service.EmpService;
import erp.system.hr.emp.vo.EmployeeVO;

@Service
public class EmpServiceImpl implements EmpService {
	
	private final  EmpMapper em;
	
	@Autowired
	public EmpServiceImpl(EmpMapper em) {
		this.em = em;
	}
	@Override
	public EmployeeVO getEmployee(String empCode) {
		Optional<EmployeeVO> result = Optional.ofNullable(em.getEmployee(empCode));
		return result.orElse(null);
	}
	@Override
	public Integer empRegist(EmployeeVO emp) {
		// TODO Auto-generated method stub
		return em.insertEmployee(emp);
	}
	
	public Integer empFamillyRegist() {
		return null;
	}
	public Integer empCareerRegist() {
		return null;
	}
	public Integer empLicenseRegist() {
		return null;
	}
	
	public Integer empSchoolRegist() {
		return null;
	}
	
}
