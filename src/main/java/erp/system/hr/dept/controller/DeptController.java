package erp.system.hr.dept.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import erp.system.hr.dept.service.DeptService;
import erp.system.hr.dept.vo.DeptVO;

@Controller
@RequestMapping("dept")
public class DeptController {

	private final DeptService ds;
	
	@Autowired
	public DeptController(DeptService ds) {
		this.ds = ds;
	}
	
	@GetMapping("/getDepts")
	public @ResponseBody List<DeptVO> getDeptlist() {
		return ds.getDeptList();
	}
	
	@GetMapping("/getDept")
	public @ResponseBody List<DeptVO> getDept(@RequestParam String deptName) {
		return ds.getDept(deptName);		
	}
}
 