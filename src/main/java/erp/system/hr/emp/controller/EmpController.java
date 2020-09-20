package erp.system.hr.emp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import erp.system.hr.emp.service.EmpService;
import erp.system.hr.emp.vo.EmployeeVO;

@Controller
@RequestMapping("emp")
public class EmpController {
	private final EmpService es;
	
	@Autowired
	public EmpController(EmpService es) {
		this.es = es;
	}
	
	@GetMapping("/getEmps")
	public String getEmployee(Model model){
		String empcode = "PB908201";
		System.out.println(es.getEmployee(empcode));
		model.addAttribute("emp", es.getEmployee(empcode));
		return "/views/emp/empList"; 
	}
	 
	@GetMapping("/empRegist")
	public String empRegistView(){
		return "/views/emp/EmpRegist"; 
	}
	
	@PostMapping("/empRegist")
	public @ResponseBody Integer empRegist(@RequestBody EmployeeVO emp) {
		es.empRegist(emp);
		
		return 1;
	}
	


}
