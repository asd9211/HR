package erp.system.hr.apt.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import erp.system.hr.apt.service.AptService;
import erp.system.hr.apt.service.impl.AptServiceImpl;
import erp.system.hr.apt.vo.AptmntVO;

@Controller
@RequestMapping("apt")
public class AptmtController {
	private static Logger logger = LoggerFactory.getLogger(AptmtController.class);
	
	private final AptService asi;
	
	AptmtController(@Autowired AptServiceImpl asi){
		this.asi  = asi;
	}
	
	
	@GetMapping("/aptRegist") // 나중에 aptRegistView 로 변경
	public String aptRegistView() {
		return "/views/apt/AppointmentRegist";
	}
	
	@PostMapping("/appointment")
	public @ResponseBody boolean aptRegist(@RequestBody AptmntVO aptVo) {
		logger.info("aptVo => " + aptVo);
		logger.info("aptVo => " + asi.aptRegist());
		
		return true;
	}
} 
