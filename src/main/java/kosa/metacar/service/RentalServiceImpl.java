package kosa.metacar.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kosa.metacar.dto.DistanceDTO;
import kosa.metacar.dto.Rental_CarDTO;
import kosa.metacar.mapper.RentalMapper;

@Service
public class RentalServiceImpl implements RentalService{

	@Autowired
	private RentalMapper mapper;

	@Override
	public void rentalCar(Rental_CarDTO rc) {
		mapper.carRental(rc);
	}

	@Override
	public DistanceDTO getMoney(String carKind) {
		
		return mapper.getMoney(carKind);
	}
	
	

}
