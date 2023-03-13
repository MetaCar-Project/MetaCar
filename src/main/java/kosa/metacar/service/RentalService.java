package kosa.metacar.service;
import org.springframework.stereotype.Service;

import kosa.metacar.dto.Cancel_CarDTO;
import kosa.metacar.dto.DistanceDTO;
import kosa.metacar.dto.Have_CarDTO;
import kosa.metacar.dto.Rental_CarDTO;
import oracle.security.crypto.fips.RNGTest;


@Service
public interface RentalService {
	public void rentalCar(Rental_CarDTO rc);
	public Have_CarDTO getCar(Have_CarDTO hc);
	public void cancelCar(Cancel_CarDTO cc, Rental_CarDTO rc);
	
}
