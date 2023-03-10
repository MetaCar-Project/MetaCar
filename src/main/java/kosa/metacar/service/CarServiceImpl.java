package kosa.metacar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kosa.metacar.dto.Have_CarDTO;
import kosa.metacar.mapper.CarMapper;

@Service
public class CarServiceImpl implements CarService {
	
	@Autowired
	private CarMapper mapper;

	@Override
	public List<Have_CarDTO> getCarList() {
		return mapper.cargetList();		
	}


}
