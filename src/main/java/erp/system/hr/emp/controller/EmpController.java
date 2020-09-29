package erp.system.hr.emp.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import erp.system.hr.emp.service.EmpService;
import erp.system.hr.util.FileUploader;

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
	public @ResponseBody Boolean empRegist(/*@RequestBody Map<String,List<Map<String,String>>> param-*/
			MultipartHttpServletRequest req) {
		
		try {
			es.empRegist(req);
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return true;
	}
	
	 
}
