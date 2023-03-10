package kosa.metacar.mapper;

import kosa.metacar.dto.DistanceDTO;
import kosa.metacar.dto.Have_CarDTO;
import kosa.metacar.dto.Rental_CarDTO;

public interface RentalMapper {
	
	public void carRental(Rental_CarDTO rc);
	
	public Have_CarDTO carGet(Have_CarDTO hc);
	
	public int carUpdate(String carNum);
}
