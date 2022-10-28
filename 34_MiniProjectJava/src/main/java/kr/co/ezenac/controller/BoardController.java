package kr.co.ezenac.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@GetMapping("/main")
	public String main() {
		return "user/board/board_main";
	}
	
	@GetMapping("/read")
	public String read() {
		return "user/board/board_info";
	}
	
	@GetMapping("/write")
	public String write() {
		return "user/board/board_write";
	}
	
	@GetMapping("/modify")
	public String modify() {
		
		return "user/board/board_modify";
	}
	
	@GetMapping("/delete")
	public String delete() {
		
		return "user/board/board_delete";
	}

}
