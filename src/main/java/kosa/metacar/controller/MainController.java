package kosa.metacar.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kosa.metacar.dto.Criteria;
import kosa.metacar.dto.PageDTO;
import kosa.metacar.service.CarService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/metaCar/*")
@AllArgsConstructor
public class MainController {
	
	private CarService service;
	
//	@GetMapping("/main")
//	public String main(Model model) {
//		model.addAttribute("list", service.getCarList());
//		return "main";		
//	}
	@GetMapping("/main")
	public String list(Criteria cri,Model model) {
		log.info("list..............");
		log.info(cri);
		model.addAttribute("list", service.getCarListWithPaging(cri));
		model.addAttribute("pageMaker",new PageDTO(cri,200));
		return "main";
	}
	
//	@GetMapping("/list")
//	public void list(Criteria cri,Model model) {
//		log.info("list..............");
//		model.addAttribute("list",service.getList(cri));
//		model.addAttribute("pageMaker",new PageDTO(cri,200));
//	}
}
