package kosa.metacar.mapper;


import kosa.metacar.dto.Rental_CarDTO;
import kosa.metacar.dto.Return_CarDTO;

public interface ReturnMapper {
	
	public void carReturn(Return_CarDTO rc);
	
	public int returnUpdate(String carNum);
	
	public int carReturnox(int reserveNum);
	
	public String getCarnum(int reserveNum);
	
	public Rental_CarDTO getRental(String id);
}
