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
	public String rentalPage(@ModelAttribute("car") Have_CarDTO hc, Model model) {
		hc.setCarKind("suv");
		hc.setCarEff("11");
		hc.setCarMaking("현대");
		hc.setCarModel("쏘렌토");
		DistanceDTO distance = service.getMoney(hc.getCarKind());
		model.addAttribute("distance", distance);
		log.warn("getMapping ================="+hc);
		log.warn("distance : ======================================== " + distance);
		return "rental";
	}
	
	@PostMapping("/rental")
	public String rentalCar(Rental_CarDTO rc) {
		
		log.warn("======================================================"+rc);
		
		return "main";
	}
	
}
