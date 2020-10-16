package erp.system.hr.work;

import java.util.List;

import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import erp.system.hr.emp.vo.EmployeeVO;
import erp.system.hr.work.mapper.WorkMapper;
import erp.system.hr.work.service.impl.WorkServiceImpl;
import erp.system.hr.work.vo.WorkVO;

@RunWith(SpringRunner.class)
@SpringBootTest
public class WorkServiceTest {

	private static Logger logger = LoggerFactory.getLogger(WorkServiceTest.class);

	@Autowired
	private WorkMapper wm;
	@Autowired
	private WorkServiceImpl ws;

	//@Test
	public void 근무일_조회() {

		// 사번 검색
		String empCode = "PB001001";
		String workDay = null;
		List<WorkVO> workList = ws.getWorkByempCode(empCode, workDay);

		workList.forEach(wvo -> logger.info(wvo.toString()));

		// 일자 검색
		empCode = null;
		workDay = "20200102";
		workList = ws.getWorkByempCode(empCode, workDay);

		workList.forEach(wvo -> logger.info(wvo.toString()));

		// 사번 && 일자 검색
		empCode = "PB001001";
		workDay = "20200102";
		workList = ws.getWorkByempCode(empCode, workDay);

		workList.forEach(wvo -> logger.info(wvo.toString()));
	}

	//@Test
	public void 근무시작입력() {
		WorkVO wvo = new WorkVO();
		wvo.setEmpCode("PB001001");
		wvo.setWorkDay("20200104");
		
		Assertions.assertThat(ws.insertWorkStart(wvo)).isEqualTo(1);
	}
	
	@Test
	public void 근무종료입력() {
		WorkVO wvo = new WorkVO();
		wvo.setEmpCode("PB001001");
		wvo.setWorkDay("20200104");
		
		Assertions.assertThat(ws.updateWorkEnd(wvo)).isEqualTo(1);
	}
}
