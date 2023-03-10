package kosa.metacar.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kosa.metacar.dto.DistanceDTO;
import kosa.metacar.dto.Have_CarDTO;
import kosa.metacar.dto.Rental_CarDTO;
import kosa.metacar.mapper.RentalMapper;

@Service
public class RentalServiceImpl implements RentalService{

	@Autowired
	private RentalMapper mapper;

	@Transactional
	@Override
	public void rentalCar(Rental_CarDTO rc) {
		mapper.carUpdate(rc.getCarNum());
		mapper.carRental(rc);
	}

	@Override
	public Have_CarDTO getCar(Have_CarDTO hc) {
		return mapper.carGet(hc);
	}

	
	
	

}
