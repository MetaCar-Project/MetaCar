package kosa.metacar.mapper;

import java.util.List;

import kosa.metacar.dto.Cancel_CarDTO;
import kosa.metacar.dto.DistanceDTO;
import kosa.metacar.dto.Have_CarDTO;
import kosa.metacar.dto.Rental_CarDTO;

public interface RentalMapper {
	
	public void carRental(Rental_CarDTO rc);
	
	public Have_CarDTO carGet(Have_CarDTO hc);
	
	public int carUpdate(String carNum);
	
	public void carCancel(Cancel_CarDTO cc);
	
	public int cancelUpdate(String carNum);
	
	public int carCancelox(int reserveNum);
	
	public String getCarnum(int reserveNum);
	
	public List<Cancel_CarDTO> getCancel(String id);

	public Rental_CarDTO getRental(String id);
	
	public Rental_CarDTO canRental(String carNum);
}
