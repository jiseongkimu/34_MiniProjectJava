package kr.co.ezenac.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@GetMapping("/login")
	public String login() {
		
		return "user/users/login";
	}
	
	@GetMapping("/join")
	public String join() {
		
		return "user/users/join";
	}
	
	@GetMapping("/modify")
	public String modify() {
		
		return "user/users/modify";
	}
	
	@GetMapping("/logout")
	public String logout() {
		return "user/users/logout";
	}


}
