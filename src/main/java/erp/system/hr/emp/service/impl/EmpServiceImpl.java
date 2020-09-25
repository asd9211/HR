package erp.system.hr.emp.service.impl;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import erp.system.hr.emp.mapper.EmpMapper;
import erp.system.hr.emp.service.EmpService;
import erp.system.hr.emp.vo.CareerVO;
import erp.system.hr.emp.vo.EmployeeVO;
import erp.system.hr.emp.vo.FamVO;
import erp.system.hr.emp.vo.LicenseVO;
import erp.system.hr.emp.vo.SchoolVO;
import erp.system.hr.util.Converter;

@Service
@Transactional
public class EmpServiceImpl implements EmpService {
	private final EmpMapper em;

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
	public Boolean empRegist(Map<String, List<Map<String, String>>> param) {
		Boolean result = true;
		
		for (Map<String, String> empInfo : param.get("empInfo")) {
			EmployeeVO evo = new EmployeeVO();
			Converter.convertMapToVO(empInfo, evo);
			if (em.insertEmployee(evo) != 1) result = false;
		}

		for (Map<String, String> famInfo : param.get("famInfo")) {
			FamVO fvo = new FamVO();
			Converter.convertMapToVO(famInfo, fvo);
			if (em.insertFamInfo(fvo) != 1) result = false;
		}
		
		for (Map<String, String> schInfo : param.get("schInfo")) {
			SchoolVO svo = new SchoolVO();
			Converter.convertMapToVO(schInfo, svo);
			if (em.insertSchoolInfo(svo) != 1) result = false;
		}
		for (Map<String, String> licInfo : param.get("licInfo")) {
			LicenseVO lvo = new LicenseVO();
			Converter.convertMapToVO(licInfo, lvo);
			if (em.insertLicenseInfo(lvo) != 1) result = false;
		}
		for (Map<String, String> carInfo : param.get("carInfo")) {
			CareerVO cvo = new CareerVO();
			Converter.convertMapToVO(carInfo, cvo);
			System.out.println(cvo);
			if (em.insertCareerInfo(cvo) != 1) result = false;
		}
		
		return result;
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
