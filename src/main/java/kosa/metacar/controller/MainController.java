package kosa.metacar.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
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
	public String main(Criteria cri,Model model,Principal principal) {
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
	public ResponseEntity<String> main(@RequestBody String id){	
		String checkid=id.trim().substring(1).substring(0, id.length()-2);
		System.out.println("========================아 이 디====================="+id);	
		System.out.println("========================체 크 아 이 디====================="+checkid);
		if(service.checkReserve(checkid)) {
			log.warn("예약차량있음");
			return new ResponseEntity<> ("haverentalid", HttpStatus.OK);
		}
		log.warn("예약차량없음");
		return new ResponseEntity<> ("dontreantalid", HttpStatus.OK);
	}

}
