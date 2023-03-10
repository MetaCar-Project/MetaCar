package kosa.metacar.mapper;

import kosa.metacar.dto.DistanceDTO;
import kosa.metacar.dto.Rental_CarDTO;

public interface RentalMapper {
	
	public void carRental(Rental_CarDTO rc);
	
	public DistanceDTO getMoney(String carKind);
}
