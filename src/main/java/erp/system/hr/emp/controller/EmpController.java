package erp.system.hr.emp.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Iterator;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import erp.system.hr.emp.service.EmpService;

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
	public @ResponseBody Boolean empRegist(@RequestBody Map<String,List<Map<String,String>>> param) {
		return es.empRegist(param);
	}
	
	 
	@PostMapping("/empPicRegist")
	public @ResponseBody Object uploadFile(MultipartHttpServletRequest req) throws IOException {
		Iterator<String> itr = req.getFileNames();
		String RealFileName;
		String changedFileName = "C:\\Users\\tec\\Desktop\\lyh\\";
		
		if(itr.hasNext()) {
			changedFileName += "" + System.currentTimeMillis();
			changedFileName += ".jpeg"; 
			FileOutputStream fos = new FileOutputStream(changedFileName);
			
			fos.write(req.getFile(itr.next()).getBytes());
			fos.close();
			changedFileName = "";	
		}
		return true;
	}
}
