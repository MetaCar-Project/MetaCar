package kosa.metacar.service;
import org.springframework.stereotype.Service;

import kosa.metacar.dto.Rental_CarDTO;


@Service
public interface RentalService {
	public void rentalCar(Rental_CarDTO rc);
}
