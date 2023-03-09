package kosa.metacar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import kosa.metacar.mapper.RentalMapper;
import kosa.metacar.service.RentalService;

@Controller
@RequestMapping("/metaCar/*")
public class RentalController {
	@Autowired
	private RentalService service;
	
	
	@GetMapping("/rental")
	public String rentalPage(Model model) {
		model.addAttribute("test", service.testCate());
		return "rental";
	}
}
