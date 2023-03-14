package kosa.metacar.service;
import java.util.List;

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
	public void cancelCar(Cancel_CarDTO cc);
	public List<Cancel_CarDTO> cancelGet(String id);
	public boolean checkReserve(String id);
	public Rental_CarDTO checkRental(String id);
	public boolean canReserve (String carNum);
}
