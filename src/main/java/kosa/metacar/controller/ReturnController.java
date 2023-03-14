package kosa.metacar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kosa.metacar.dto.Return_CarDTO;
import kosa.metacar.service.ReturnService;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/metaCar/*")
@Log4j
public class ReturnController {

	
	@Autowired
	private ReturnService service;
	
	@PreAuthorize("hasAnyRole('ROLE_USER')")
	@PostMapping("/return")
	@ResponseBody
	public ResponseEntity<String> returnCar(@RequestBody Return_CarDTO rc) {
		log.warn("aclksdasacklskslreutnawserfnfnsalfnasdflan" + rc);
		service.returnCar(rc);
		String id = rc.getId();
		log.warn("asfasdfsafsafdsafdsfsdfsafasfas"+ rc);
		service.returnCar(rc);
		
		return new ResponseEntity<>("success",HttpStatus.OK);
	}
}
