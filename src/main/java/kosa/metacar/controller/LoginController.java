package kosa.metacar.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kosa.metacar.dto.Socar_MemberDTO;
import kosa.metacar.service.UserService;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/metaCar/*")
public class LoginController {

	@Autowired
	private UserService uservice;

	@GetMapping("/signin")
	public String signin() {
		return "/signin";
	}

	

	@RequestMapping(value = "/signin", method = RequestMethod.POST)
	public String signin(@RequestParam("id") String id, @RequestParam("password") String password,
			HttpServletRequest request) {
		// 로그인 처리 로직을 작성
		Socar_MemberDTO sm = uservice.signinUser(id, password);
		log.info("============success");
		return sm==null? "redirect:/metaCar/signin" : "redirect:/metaCar/main";

		// 로그인 성공 시, 메인 페이지로 이동
		
	}
}
