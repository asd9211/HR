package erp.system.hr.emp;

import java.util.List;
import java.util.Map;

import org.assertj.core.api.Assertions;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import erp.system.hr.emp.mapper.EmpMapper;
import erp.system.hr.emp.service.impl.EmpServiceImpl;
import erp.system.hr.emp.vo.EmployeeVO;

@RunWith(SpringRunner.class)
@SpringBootTest
public class EmpServiceTest {

	private static Logger logger = LoggerFactory.getLogger(EmpServiceTest.class);

	@Autowired
	private EmpMapper em;
	@Autowired
	private EmpServiceImpl es;

	//@Test
	public void 전체_사원_조회() {
		List<EmployeeVO> empList = es.getEmployees();
		empList.forEach(a->{ logger.info(a+""); });
	
	}
	
	@Test
	public void 사원조회() {
		String empCode = "12312312";
		
		EmployeeVO evo = (EmployeeVO) es.getEmployee(empCode).get("empInfo");
		
		logger.info(evo+"");
		
		Assertions.assertThat(evo.getEmpCode()).isEqualTo(empCode);
	}
	
	@Test
	public void 사원등록() {
		
	}
	
}
