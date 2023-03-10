package kosa.metacar.dto;

import lombok.Data;

@Data
public class Socar_MemberDTO {
	private String id;
	private String password;
	private String phone;
	private String name;
	//주민번호
	private String regNum;
	//총주행거리 (등급위해서)
	private int totalDistance;
	
	
	
	private Rental_CarDTO rentalCar;
}
