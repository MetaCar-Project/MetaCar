package kosa.metacar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kosa.metacar.dto.DistanceDTO;
import kosa.metacar.dto.Have_CarDTO;
import kosa.metacar.dto.Rental_CarDTO;
import kosa.metacar.mapper.RentalMapper;
import kosa.metacar.service.RentalService;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/metaCar/*")
@Log4j
public class RentalController {
	
	@Autowired
	private RentalService service;
	
	
	@GetMapping("/rental")
	public String rentalPage(Have_CarDTO havecar, Model model) {
		havecar.setCarNum("321루7449");
		model.addAttribute("car",service.getCar(havecar));
		log.warn(service.getCar(havecar));
		return "rental";
	}
	
	@PostMapping("/rental")
	public String rentalCar(Rental_CarDTO rc) {
		
		log.warn("======================================================"+rc);
		
		return "main";
	}
	
}
