package kosa.metacar.controller;

import java.util.List;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kosa.metacar.dto.Criteria;
import kosa.metacar.dto.Have_CarDTO;
import kosa.metacar.dto.PageDTO;
import kosa.metacar.service.CarService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/metaCar/*")
@AllArgsConstructor
public class MainController {
	
	private CarService cs;
	
	/*
	@GetMapping("/main")
	public String main(Model model) {
		model.addAttribute("list",cs.getCarList());
		return "main";		
	}
	*/

	@PreAuthorize("hasAnyRole('ROLE_USER')")
	@GetMapping("/main")
	public String main(Criteria cri,Model model) {
		model.addAttribute("list",cs.carWithPaginggetList(cri));
		model.addAttribute("pageMaker",new PageDTO(cri,200));
		return "main";		
	}

}
