package erp.system.hr.work.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import erp.system.hr.work.service.WorkService;
import erp.system.hr.work.vo.WorkVO;

@Controller
@RequestMapping("work")
public class WorkController {

	private final WorkService ws;

	WorkController(@Autowired WorkService ws) {
		this.ws = ws; 
	}

	@GetMapping("/work")
	public @ResponseBody List<WorkVO> getWorkByDate(@RequestParam("sDate") String sDate, @RequestParam("eDate") String eDate) {
		Map<String, String> searchDate = new HashMap<>();
		searchDate.put("sDate", sDate);
		searchDate.put("eDate", eDate);
		return ws.getWorkByDate(searchDate);
	} 
	 
	@PostMapping("/work")
	public @ResponseBody boolean addWork(@RequestBody WorkVO wvo) {
		return ws.setWorkStart(wvo)==1; 
	}
	
	@PutMapping("/work")
	public @ResponseBody boolean endWork(@RequestBody WorkVO wvo) {
		return ws.setWorkEnd(wvo)==1;
	}
}
