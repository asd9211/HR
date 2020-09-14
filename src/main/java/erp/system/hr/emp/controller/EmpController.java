package erp.system.hr.emp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import erp.system.hr.emp.service.EmpService;

@Controller
@RequestMapping("emp")
public class EmpController {
	private final EmpService es;
	
	@Autowired
	public EmpController(EmpService es) {
		this.es = es;
	}
	
	@RequestMapping("/getEmps")
	public String getEmployee(Model model){
		String empcode = "A001001";
		System.out.println(es.getEmployee(empcode));
		model.addAttribute("emp", es.getEmployee(empcode));
		return "/views/emp/empList"; 
	}
	 
	@RequestMapping("/empRegist")
	public String empRegistView(){
		return "/views/emp/EmpRegist"; 
	}

}
