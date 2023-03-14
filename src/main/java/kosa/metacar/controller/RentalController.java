package kosa.metacar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kosa.metacar.dto.Cancel_CarDTO;
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
	
	@PreAuthorize("hasAnyRole('ROLE_USER')")
	@GetMapping("/rental")
	public String rentalPage(Have_CarDTO havecar, Model model) {
		model.addAttribute("car",service.getCar(havecar));
		log.warn(service.getCar(havecar));
		return "rental";
	}
	
	@PreAuthorize("hasAnyRole('ROLE_USER')")
	@PostMapping("/rental")
	public String rentalCar(Rental_CarDTO rc, Model model) {
		try {
			service.rentalCar(rc);
			model.addAttribute("getCar",rc);
		} catch (Exception e) {
			e.printStackTrace();
			 
		}
		log.warn("======================================================"+rc);
		
		return "redirect:/metaCar/main";
	}
	
	@PreAuthorize("hasAnyRole('ROLE_USER')")
	@GetMapping("/cancel/{id}")
	public String cancelPage(@PathVariable("id")String id, Rental_CarDTO rc, Model model) {
	    
	    model.addAttribute("cancel", service.cancelGet(id));
	    model.addAttribute("rentalGet", service.checkRental(id));
		return "cancel";
	}
	
	@PreAuthorize("hasAnyRole('ROLE_USER')")
	@PostMapping("/cancel")
	@ResponseBody
	public ResponseEntity<String> cancel(@RequestBody Cancel_CarDTO cc) {
		log.warn(" cancelcnaelcnaelcnaelcnaelcnaelcnael" + cc);
		String id = cc.getId();
		log.warn("klrghakladrfghklaerhgkjaerhgkjaehg+_+@!+@_!+_@!_@+" + cc);
		service.cancelCar(cc);
		
		
		return new ResponseEntity<>("success",HttpStatus.OK);
	}

	@PreAuthorize("hasAnyRole('ROLE_USER')")
	@PostMapping("/checkreserve")
	@ResponseBody
	public ResponseEntity<String> checkReserve(@RequestBody Rental_CarDTO rc){	
		System.out.println("=====-=-=-=0=-0=0=-0=-0=-0=-0=-0=-0=-0=0=-0=-0=0=");
		//String checkid=id.trim().substring(1).substring(0, id.length()-2);
		//String checkcarNum = carNum.trim().substring(1).substring(0, id.length()-2);
		System.out.println("========================아 이 디====================="+rc.getId() + "============" + rc.getCarNum());		
		if(service.checkReserve(rc.getId()) || service.canReserve(rc.getCarNum())) {
			log.warn("예약차량있음");
			return new ResponseEntity<> ("havereserve", HttpStatus.OK);
		}
		log.warn("예약차량없음");
		return new ResponseEntity<> ("noreserve", HttpStatus.OK);
	}

}
