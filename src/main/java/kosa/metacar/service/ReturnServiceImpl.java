package kosa.metacar.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kosa.metacar.dto.Return_CarDTO;
import kosa.metacar.mapper.ReturnMapper;

@Service
public class ReturnServiceImpl implements ReturnService {

	@Autowired
	private ReturnMapper mapper;
	
	@Transactional
	@Override
	public void returnCar(Return_CarDTO rc) {
		String carNum = mapper.getCarnum(rc.getReserveNum());
		mapper.carReturn(rc);
		mapper.returnUpdate(carNum);
		mapper.carReturnox(rc.getReserveNum());
	}

}
