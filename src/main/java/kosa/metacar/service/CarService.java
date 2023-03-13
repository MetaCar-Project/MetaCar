package kosa.metacar.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kosa.metacar.dto.Criteria;
import kosa.metacar.dto.Have_CarDTO;

public interface CarService {
	
	public List<Have_CarDTO> getCarList();
	
	public List<Have_CarDTO> carWithPaginggetList(Criteria cri);
	
	public Have_CarDTO cardetail(String carNum);
	

}
