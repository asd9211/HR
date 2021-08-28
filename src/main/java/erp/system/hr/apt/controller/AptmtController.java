package erp.system.hr.apt.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import erp.system.hr.apt.service.AptService;
import erp.system.hr.apt.service.impl.AptServiceImpl;
import erp.system.hr.apt.vo.AptmntVO;
import erp.system.hr.util.StringUtil;

@Controller
@RequestMapping("apt")
public class AptmtController {
	private static Logger logger = LoggerFactory.getLogger(AptmtController.class);
	
	private final AptService asi;
	
	AptmtController(@Autowired AptServiceImpl asi){
		this.asi  = asi;
	}
	@GetMapping("aptListView")
	public String aptListView() {
		return "/views/apt/AppointmentList";
	}
	@GetMapping("/aptRegistView") // 나중에 aptRegistView 로 변경
	public String aptRegistView() {
		return "/views/apt/AppointmentRegist";
	}
	
	@PostMapping("/appointment")
	public @ResponseBody boolean aptRegist(@RequestBody AptmntVO aptVo) {
		logger.info("aptVo => " + aptVo);
		logger.info("aptVo => " + asi.addAppointment(aptVo));
		
		return true;
	}
	
	@GetMapping("/appointment")
	public @ResponseBody List<AptmntVO> getApts(@RequestParam @Nullable String empName){
		if(StringUtil.isNull(empName)) {
			return asi.getAppointments();
		}
		return asi.getAppointmentByName(empName);
	}
} 
