package kosa.metacar.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class CommonController {
	
	@PreAuthorize("permitAll()")
	@RequestMapping("/")
	public String goMain() {
		return "redirect:/metaCar/main";
	}
}
