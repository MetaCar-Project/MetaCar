package kosa.metacar.controller;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kosa.metacar.dto.Socar_MemberDTO;
import kosa.metacar.service.UserService;

@Controller
@RequestMapping("/metaCar/*")
public class LoginController {

	private UserService uservice;
	
	@GetMapping("/signin")
	public String singin() {
		return "/signin";
	}
	

}
