package kosa.metacar.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kosa.metacar.mapper.RentalMapper;

@Service
public class RentalServiceImpl implements RentalService{

	@Autowired
	private RentalMapper mapper;
	
	@Override
	public int testCate() {
		// TODO Auto-generated method stub
		return mapper.test();
	}

}
