package erp.system.hr.emp.controller;

import java.io.IOException;
import java.util.Map;

import org.eclipse.jdt.internal.compiler.batch.ClasspathDirectory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;

import erp.system.hr.emp.service.EmpService;

@Controller
@RequestMapping("emp")
public class EmpController {
	private final EmpService es;
	
	@Autowired
	public EmpController(EmpService es) {
		this.es = es;
	}
	
	@GetMapping("/employee")
	public @ResponseBody Map<String, Object> getEmployee(@RequestParam String empCode){
		return es.getEmployee(empCode);
	}
	
	@GetMapping("/doubleCheck")
	public @ResponseBody boolean doubleCheck(@RequestParam String empCode){
		System.out.println(es.getEmployee(empCode)); // 객체안에 빈값이 toString으로 다 들어가니 Mapper에 따로 추가해줘야함
		return true;   
	}
	
	
	@GetMapping("/employeeView") 
	public String empEmployeeView(){
		return "/views/emp/EmpInfo"; 
	}

	@GetMapping("/empRegistView") 
	public String empRegistView(){
		return "/views/emp/EmpRegist"; 
	}

	@PostMapping("/empRegist") 
	public @ResponseBody Boolean empRegist(MultipartHttpServletRequest req) throws IOException {
		Boolean result = false;
		result = es.empRegist(req);
		
		return result;
	}
	
	 
}
