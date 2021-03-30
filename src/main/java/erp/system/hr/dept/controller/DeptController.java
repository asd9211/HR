package erp.system.hr.dept.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import erp.system.hr.dept.service.DeptService;
import erp.system.hr.dept.vo.DeptVO;
import erp.system.hr.emp.controller.EmpController;

@Controller
@RequestMapping("dept")
public class DeptController {
	private static Logger logger = LoggerFactory.getLogger(DeptController.class);
	private final DeptService ds;

	@Autowired
	public DeptController(DeptService ds) {
		this.ds = ds;
	}

	@GetMapping("/departments")
	public @ResponseBody List<DeptVO> getDeptlist() { 
		return ds.getDeptList();
	}

	@GetMapping("/department")
	public @ResponseBody List<DeptVO> getDept(@RequestParam("dept-name") String deptName) {
		return ds.getDept(deptName);
	}

	@GetMapping("/dept-by-level") 
	public @ResponseBody List<DeptVO> getDeptByLevel() {
		return ds.getDeptListByLevel();
	}

	@GetMapping("/deptRegist")
	public String deptRegistView() {
		return "/views/dept/DeptRegist";
	}
	@GetMapping("/doubleCheck")
	public @ResponseBody boolean doubleCheck(@RequestParam("deptCode") String deptCode) {
		boolean result = (ds.getDeptBydeptCode(deptCode)==null);
		return result;
	}
	@PostMapping("/deptRegist")
	public @ResponseBody boolean deptRegist(@RequestBody DeptVO dvo) {
		logger.info("DeptVO ==> {}", dvo);
		return ds.insertDept(dvo)==1; 
	}

}
