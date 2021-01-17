package erp.system.hr.base.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import erp.system.hr.base.service.impl.BaseService;
import erp.system.hr.base.vo.CodeInfo;

@Controller
@RequestMapping("base")
public class BaseController {

	BaseService bs;

	@Autowired
	public BaseController(BaseService bs) {
		this.bs = bs;
	}

	@GetMapping("/code-info")
	public @ResponseBody List<CodeInfo> getCodeInfoList(@RequestParam("group-type") String groupType,
			@RequestParam("name") String codeName) {

		return bs.getCodeInfoList(groupType, codeName);
	}

}
