package kosa.metacar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kosa.metacar.dto.Socar_MemberDTO;
import kosa.metacar.service.ProfileService;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/metaCar/*")
@Log4j
public class ProfileController {
	
	@Autowired
	private ProfileService service;
	
	@PreAuthorize("hasAnyRole('ROLE_USER')")
	@GetMapping("/profile/{id}")
	public String profile(@PathVariable("id") String id, Model model) {
		log.warn("=================================================");
		model.addAttribute("user",service.detailUser(id));
		log.warn(service.detailUser(id));
		
		return "/profile";
	}
	
	@ResponseBody
	@PostMapping("/modifyprofile")
	public ResponseEntity<String> modifyUser(@RequestBody Socar_MemberDTO sm) {
		
		service.updateUser(sm);
		log.warn(sm);
		String newphone = sm.getPhone();
		
		return service.updateUser(sm) == true ? new ResponseEntity<>(newphone,HttpStatus.OK) : new ResponseEntity<> (HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	
}
