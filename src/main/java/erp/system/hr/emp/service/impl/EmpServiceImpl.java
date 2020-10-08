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

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;

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

	@Autowired
	public EmpServiceImpl(EmpMapper em) {
		this.em = em;
	}

	@Override
	public Map<String, Object> getEmployee(String empCode) {
		Map<String, Object> allInfo = new HashMap();
		
		allInfo.put("empInfo", em.getEmployee(empCode));
		allInfo.put("famInfo", em.getFamInfo(empCode));
		allInfo.put("schInfo", em.getSchInfo(empCode));
		allInfo.put("carInfo", em.getCarInfo(empCode));
		allInfo.put("licInfo", em.getLicInfo(empCode));
		
		return allInfo;
	}

	@Override
	public Boolean empRegist(MultipartHttpServletRequest req) throws IOException {
		Boolean result;
		Map<String, List<Map<String, String>>> allInfo = Converter.convertJsonToListInMap(req);
		Optional<FileVO> profileVO = FileUploader.setProfile(req);
		result  =  empFamillyRegist(allInfo.get("famInfo"))
				&& empSchoolRegist(allInfo.get("schInfo")) 
				&& empCareerRegist(allInfo.get("carInfo"))
				&& empLicenseRegist(allInfo.get("licInfo"))
				&& empBaseInfoRegist(allInfo.get("empInfo"), profileVO);

		return result;
	}

	public Boolean empBaseInfoRegist(List<Map<String, String>> param, Optional<FileVO> profileVO) {
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
	public List<FamVO> getFamInfo(String empCode) {
		// TODO Auto-generated method stub
		return em.getFamInfo(empCode);
	}

	@Override
	public List<SchoolVO> getSchInfo(String empCode) {
		// TODO Auto-generated method stub
		return em.getSchInfo(empCode);
	}

	@Override
	public List<LicenseVO> getLicInfo(String empCode) {
		// TODO Auto-generated method stub
		return em.getLicInfo(empCode);
	}

	@Override
	public List<CareerVO> getCarInfo(String empCode) {
		// TODO Auto-generated method stub
		return em.getCarInfo(empCode);
	}

}
