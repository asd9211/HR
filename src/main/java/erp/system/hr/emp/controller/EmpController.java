package erp.system.hr.emp.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import erp.system.hr.emp.service.EmpService;
import erp.system.hr.emp.vo.EmployeeVO;

@Controller
@RequestMapping("emp")
public class EmpController {
	private static Logger logger = LoggerFactory.getLogger(EmpController.class);

	private final EmpService es;

	@Autowired
	public EmpController(EmpService es) {
		this.es = es;
	}

	@GetMapping("/employee")
	public @ResponseBody Map<String, Object> getEmployee(@RequestParam String empCode) {
		return es.getEmployee(empCode);
	}

	@GetMapping("/doubleCheck")
	public @ResponseBody boolean doubleCheck(@RequestParam String empCode) {
		logger.info(es.getEmployee(empCode) + ""); // 객체안에 빈값이 toString으로 다 들어가니 Mapper에 따로 추가해줘야함
		return true;
	}

	@GetMapping("/employees")
	public @ResponseBody List<EmployeeVO> getEmployees() {
		logger.info(es.getEmployees() + "");
		
		return es.getEmployees();
	}

	@GetMapping("/employeeView")
	public String empEmployeeView() {
		return "/views/emp/EmpInfo";
	}

	@GetMapping("/empModifyView")
	public String empModifyView() {
		return "/views/emp/EmpModify";
	}

	@GetMapping("/empRegistView")
	public String empRegistView() {
		return "/views/emp/EmpRegist";
	}

	@GetMapping("/empOrganView")
	public String empOrganView() {
		return "/views/emp/EmpOrganization";
	}

	@PostMapping("/employee")
	public @ResponseBody Boolean empRegist(MultipartHttpServletRequest req) throws IOException {
		return es.empRegist(req);
	}

	@PutMapping("/employee")
	public @ResponseBody Boolean empModfiy(MultipartHttpServletRequest req) throws IOException {
		return es.empModify(req);
	}
	
}
