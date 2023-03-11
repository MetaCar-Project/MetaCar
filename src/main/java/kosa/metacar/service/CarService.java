package kosa.metacar.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kosa.metacar.dto.Have_CarDTO;

public interface CarService {
	
	public List<Have_CarDTO> getCarList();
	

}
