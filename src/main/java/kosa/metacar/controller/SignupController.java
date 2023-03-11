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
	
	@GetMapping("/addacount")
	public String addacount() {
		return "/addacount";
	}
	/*
//GetMapping("/[湲곕뒫紐�]")
	@PostMapping("/addacount")
	public String addacount(Socar_MemberDTO sc) {
		log.info("SocarMember : " + sc);

		//uservice.createUser(sc);

		return "redirect:/metaCar/signin";
	}
	*/
}
