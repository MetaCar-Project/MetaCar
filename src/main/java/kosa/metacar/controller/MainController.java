package kosa.metacar.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kosa.metacar.dto.Criteria;
import kosa.metacar.dto.PageDTO;
import kosa.metacar.dto.Rental_CarDTO;
import kosa.metacar.service.CarService;
import kosa.metacar.service.RentalService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Controller
@Log4j
@RequestMapping("/metaCar/*")
@AllArgsConstructor
public class MainController {
	
	private CarService cs;
	private RentalService rs;
	
	@PreAuthorize("permitAll()")
	@GetMapping("/main")
	public String main(Criteria cri,Model model,Principal principal,Rental_CarDTO rc) {
		model.addAttribute("list",cs.carWithPaginggetList(cri));
		model.addAttribute("pageMaker",new PageDTO(cri,200));
		model.addAttribute(rs.rentalid(rc));
		return "main";		
	}
	
	@PreAuthorize("permitAll()")
	@GetMapping("/detailcar")
	public String detailcar(@RequestParam("carNum") String carNum,Model model)throws Exception{
		model.addAttribute("detail", cs.cardetail(carNum));
		return "detailcar";
	}

}
