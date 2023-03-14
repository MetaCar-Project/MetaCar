package kosa.metacar.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kosa.metacar.dto.Criteria;
import kosa.metacar.dto.PageDTO;
import kosa.metacar.dto.Rental_CarDTO;
import kosa.metacar.security.domain.CustomUser;
import kosa.metacar.service.CarService;
import kosa.metacar.service.RentalService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Controller
@Log4j
@RequestMapping("/metaCar/*")
@AllArgsConstructor
public class MainController {
	
	@Autowired
	private CarService cs;
	
	@Autowired
	private RentalService service;
	
	@PreAuthorize("permitAll()")
	@GetMapping("/main")
	public String main(Criteria cri,Model model) {
		
		model.addAttribute("list",cs.carWithPaginggetList(cri));
		model.addAttribute("pageMaker",new PageDTO(cri,200));
		return "main";		
	}
	
	@PreAuthorize("permitAll()")
	@GetMapping("/detailcar")
	public String detailcar(@RequestParam("carNum") String carNum,Model model)throws Exception{
		model.addAttribute("detail", cs.cardetail(carNum));
		return "detailcar";
	}
	
	
	
	@PreAuthorize("permitAll()")
	@PostMapping("/main")
	@ResponseBody
	public ResponseEntity<Rental_CarDTO> main(@RequestBody String id, HttpServletResponse response){	
	
		String checkid=id.trim().substring(1).substring(0, id.length()-2);
		System.out.println("id2 : ============================ " + checkid);
		response.setHeader("Content-Type", "application/json;charset=utf-8");
		return new ResponseEntity<Rental_CarDTO> (cs.carMain(checkid), HttpStatus.OK);
	}

}
