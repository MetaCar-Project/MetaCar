package kosa.metacar.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kosa.metacar.dto.Rental_CarDTO;
import kosa.metacar.dto.Return_CarDTO;
import kosa.metacar.mapper.ReturnMapper;

@Service
public class ReturnServiceImpl implements ReturnService {

	@Autowired
	private ReturnMapper mapper;
	
	@Transactional
	@Override
	public void returnCar(Return_CarDTO returnCar) {
		Rental_CarDTO rentalCar = mapper.getRental(returnCar.getId());
		int resnum = rentalCar.getReserveNum();
		String carNum = mapper.getCarnum(resnum);
		mapper.carReturn(returnCar);
		mapper.returnUpdate(carNum);
		mapper.carReturnox(resnum);
	}

}
