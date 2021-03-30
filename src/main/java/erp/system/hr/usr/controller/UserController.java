package erp.system.hr.usr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

	@GetMapping("/main")
	public String main() {
		return "/main";
	}

	
	@GetMapping("/goLogin")
	public String goLogin() {
		return "/views/usr/Login";
	}
}
