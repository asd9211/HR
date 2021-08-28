package erp.system.hr.emp.service.impl;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartHttpServletRequest;


import erp.system.hr.emp.mapper.EmpMapper;
import erp.system.hr.emp.service.EmpService;
import erp.system.hr.emp.vo.CareerVO;
import erp.system.hr.emp.vo.EmployeeVO;
import erp.system.hr.emp.vo.FamVO;
import erp.system.hr.emp.vo.LicenseVO;
import erp.system.hr.emp.vo.SchoolVO;
import erp.system.hr.util.Converter;
import erp.system.hr.util.FileUploader;
import erp.system.hr.util.vo.FileVO;

@Service
@Transactional
public class EmpServiceImpl implements EmpService {
	private final EmpMapper em;
	private static final String EMP_INFO = "empInfo";
	private static final String FAM_INFO = "famInfo";
	private static final String SCH_INFO = "schInfo";
	private static final String CAR_INFO = "carInfo";
	private static final String LIC_INFO = "licInfo"; 
	
	
	@Autowired
	public EmpServiceImpl(EmpMapper em) {
		this.em = em;
	}

	@Override
	public Map<String, Object> getEmployee(String empCode) {
		Map<String, Object> allInfo = new HashMap();
		
		allInfo.put(EMP_INFO, em.getEmployee(empCode));
		getFamInfo(empCode).ifPresent(famInfo -> allInfo.put(FAM_INFO, famInfo));
		getSchInfo(empCode).ifPresent(schInfo -> allInfo.put(SCH_INFO, schInfo));
		getCarInfo(empCode).ifPresent(carInfo -> allInfo.put(CAR_INFO, carInfo));
		getLicInfo(empCode).ifPresent(licInfo -> allInfo.put(LIC_INFO, licInfo));
		
		return allInfo;
	}

	@Override
	public Boolean addEmp(MultipartHttpServletRequest req) throws IOException {
		Map<String, List<Map<String, String>>> allInfo = Converter.convertJsonToListInMap(req);
		Optional<FileVO> profileVO = FileUploader.setProfile(req);

		return empFamillyRegist(allInfo.get(FAM_INFO))
				&& empSchoolRegist(allInfo.get(SCH_INFO)) 
				&& empCareerRegist(allInfo.get(CAR_INFO))
				&& empLicenseRegist(allInfo.get(LIC_INFO))
				&& addEmpBaseInfo(allInfo.get(EMP_INFO), profileVO);
	}
	
	@Override
	public Boolean addEmpBaseInfo(List<Map<String, String>> param, Optional<FileVO> profileVO) {
		for (Map<String, String> empInfo : param) {
			EmployeeVO evo = new EmployeeVO();
			Converter.convertMapToVO(empInfo, evo);
			profileVO.ifPresent(pvo -> {
				evo.setRealFileName(pvo.getRealFileName());
				evo.setChangedFileName(pvo.getChangedFileName());
			});
			
			if (em.insertEmployee(evo) != 1)
				return false;
		}
 		return true;
	}

	public Boolean empFamillyRegist(List<Map<String, String>> param) {
		for (Map<String, String> famInfo : param) {
			FamVO fvo = new FamVO();
			Converter.convertMapToVO(famInfo, fvo);
			if (em.insertFamInfo(fvo) != 1)
				return false;
		}
		return true;
	}

	public Boolean empCareerRegist(List<Map<String, String>> param) {
		for (Map<String, String> carInfo : param) {
			CareerVO cvo = new CareerVO();
			Converter.convertMapToVO(carInfo, cvo);
			if (em.insertCareerInfo(cvo) != 1)
				return false;
		}
		return true;
	}

	public Boolean empLicenseRegist(List<Map<String, String>> param) {
		for (Map<String, String> licInfo : param) {
			LicenseVO lvo = new LicenseVO();
			Converter.convertMapToVO(licInfo, lvo);
			if (em.insertLicenseInfo(lvo) != 1)
				return false;
		}
		return true;
	}

	public Boolean empSchoolRegist(List<Map<String, String>> param) {
		for (Map<String, String> schInfo : param) {
			SchoolVO svo = new SchoolVO();
			Converter.convertMapToVO(schInfo, svo);
			if (em.insertSchoolInfo(svo) != 1)
				return false;
		}
		return true;
	}

	@Override
	public Optional<List<FamVO>> getFamInfo(String empCode) {
		// TODO Auto-generated method stub
		return Optional.of(em.getFamInfo(empCode));
	}

	@Override
	public Optional<List<SchoolVO>> getSchInfo(String empCode) {
		// TODO Auto-generated method stub
		return Optional.of(em.getSchInfo(empCode));
	}

	@Override
	public Optional<List<LicenseVO>> getLicInfo(String empCode) {
		// TODO Auto-generated method stub
		return Optional.of(em.getLicInfo(empCode));
	}

	@Override
	public Optional<List<CareerVO>> getCarInfo(String empCode) {
		// TODO Auto-generated method stub
		return Optional.of(em.getCarInfo(empCode));
	}

	@Override
	public Boolean modifyEmp(MultipartHttpServletRequest req) throws IOException {
		Map<String, List<Map<String, String>>> allInfo = Converter.convertJsonToListInMap(req);
		Optional<FileVO> profileVO = FileUploader.setProfile(req);
		String empCode = allInfo.get("empInfo").get(0).get("empCode");
		
				removeFamInfo(empCode);
				removeSchInfo(empCode);
				removeLicInfo(empCode);
				removeCarInfo(empCode);
		
		Boolean result  =  
				modifyEmpBaseInfo(allInfo.get(EMP_INFO), profileVO) 
				&& empFamillyRegist(allInfo.get(FAM_INFO))
				&& empSchoolRegist(allInfo.get(SCH_INFO)) 
				&& empCareerRegist(allInfo.get(CAR_INFO))
				&& empLicenseRegist(allInfo.get(LIC_INFO));
		
		return result;
	}
	
	@Override
	public Boolean modifyEmpBaseInfo(List<Map<String, String>> param, Optional<FileVO> profileVO) {
		for (Map<String, String> empInfo : param) {
			EmployeeVO evo = new EmployeeVO();
			Converter.convertMapToVO(empInfo, evo);
			profileVO.ifPresent(pvo -> {
				evo.setRealFileName(pvo.getRealFileName());
				evo.setChangedFileName(pvo.getChangedFileName());
			});
			
			if (em.updateEmployee(evo) != 1)
				return false;
		}
 		return true;
	}

	@Override
	public Integer removeFamInfo(String empCode) {
		// TODO Auto-generated method stub
		return em.deleteFamInfo(empCode);
	}

	@Override
	public Integer removeSchInfo(String empCode) {
		// TODO Auto-generated method stub
		return em.deleteSchInfo(empCode);
	}

	@Override
	public Integer removeLicInfo(String empCode) {
		// TODO Auto-generated method stub
		return em.deleteLicInfo(empCode);
	}

	@Override
	public Integer removeCarInfo(String empCode) {
		// TODO Auto-generated method stub
		return em.deleteCarInfo(empCode);
	}

	@Override
	public List<EmployeeVO> getEmployees() {
		return em.getEmployees();
	}

}
