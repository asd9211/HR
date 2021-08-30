package erp.system.hr.dept.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import erp.system.hr.dept.service.DeptService;
import erp.system.hr.dept.vo.DeptVO;

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
		List<DeptVO> result = ds.getDeptList();
		logger.info("getDeptlist => {} ", result);
		return result;
	}
	
	@GetMapping("departmentsByPage")
	public @ResponseBody List<DeptVO> getDeltlistByPage(@RequestParam("page") int page){
		logger.info("page => {} ", page);
		List<DeptVO> result = ds.getDeptListByPage(page);
		logger.info("getDeptlist => {} ", result);
		return result;
	}
	
	@GetMapping("/department")
	public @ResponseBody List<DeptVO> getDept(@RequestParam("deptName") String deptName) {
		List<DeptVO> result = ds.getDept(deptName);
		logger.info("getDpet => {} ", result);
		return result;
	}

	@GetMapping("/dept-by-level") 
	public @ResponseBody List<DeptVO> getDeptByLevel() {
		return ds.getDeptListByLevel();
	}

	@GetMapping("/deptRegist")
	public String deptRegistView() {
		return "/views/dept/DeptRegist";
	}
	@GetMapping("/deptList")
	public String deptListView() {
		return "/views/dept/DeptList";
	}
	@GetMapping("/deptModify")
	public String deptModifyView() {
		return "/views/dept/DeptModify";
	}
	
	@GetMapping("/doubleCheck")
	public @ResponseBody boolean doubleCheck(@RequestParam("deptCode") String deptCode) {
		return ds.getDeptBydeptCode(deptCode)==null;
	}
	@PostMapping("/department")
	public @ResponseBody boolean deptRegist(@RequestBody DeptVO dvo) {
		logger.info("DeptVO ==> {}", dvo);
		return ds.addDept(dvo)==1; 
	}
	@PutMapping("/department")
	public @ResponseBody boolean deptModify(@RequestBody DeptVO dvo) {
		logger.info("DeptVO ==> {}", dvo);
		return ds.modifyDept(dvo)==1; 
	}

}
