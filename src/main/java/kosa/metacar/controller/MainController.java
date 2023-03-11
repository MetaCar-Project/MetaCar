package kosa.metacar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kosa.metacar.service.CarService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/metaCar/*")
@AllArgsConstructor
public class MainController {
	
	private CarService cs;
	
	@GetMapping("/main")
	public String main(Model model) {
		model.addAttribute("list",cs.getCarList());
		return "main";		
	}
	

}
