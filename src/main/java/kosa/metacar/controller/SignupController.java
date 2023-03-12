package kosa.metacar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import kosa.metacar.dto.Socar_MemberDTO;
import kosa.metacar.service.UserService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/metaCar/*")
@AllArgsConstructor
public class SignupController {

	@Autowired
	private UserService uservice;
	
	@GetMapping("/addaccount")
	public String addacount() {
		return "/addaccount";
	}
	
	@PostMapping("/addaccount")
	public String addAccount(Socar_MemberDTO sm) {
		log.warn(sm);
		uservice.createUser(sm);
		return "/signin";
	}
	
}
