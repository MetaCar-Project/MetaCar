package kosa.metacar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/metaCar/*")
public class ProfileController {
	@GetMapping("/profile")
	public String profile() {
	
		return "/profile";
	}
}
