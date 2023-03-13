package kosa.metacar.service;
import org.springframework.stereotype.Service;

import kosa.metacar.dto.Cancel_CarDTO;
import kosa.metacar.dto.DistanceDTO;
import kosa.metacar.dto.Have_CarDTO;
import kosa.metacar.dto.Rental_CarDTO;
import kosa.metacar.dto.Return_CarDTO;
import oracle.security.crypto.fips.RNGTest;


@Service
public interface ReturnService {
	
	public void returnCar(Return_CarDTO rc);
	
	
}
