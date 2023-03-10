package kosa.metacar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kosa.metacar.dto.Criteria;
import kosa.metacar.dto.Have_CarDTO;
import kosa.metacar.dto.Rental_CarDTO;
import kosa.metacar.mapper.CarMapper;

@Service
public class CarServiceImpl implements CarService {
	
	@Autowired
	private CarMapper mapper;

	@Override
	public List<Have_CarDTO> getCarList() {
		return mapper.cargetList();		
	}

	@Override
	public List<Have_CarDTO> carWithPaginggetList(Criteria cri) {
		return mapper.carWithPaginggetList(cri);
	}

	@Override
	public Have_CarDTO cardetail(String carNum) {
		return mapper.cargetDetail(carNum);
	}

	@Override
	public Rental_CarDTO carMain(String id) {
		
		return mapper.mainCar(id);
	}

}
