package kosa.metacar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/metaCar/*")
public class SignupController {

	@GetMapping("/signup")
	public String login() {
	
		return "/signup";
	}
}
