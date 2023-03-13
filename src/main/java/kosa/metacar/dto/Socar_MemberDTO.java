package kosa.metacar.dto;

import java.util.List;

import lombok.Data;

@Data
public class Socar_MemberDTO {
	private String id;
	private String password;
	private String phone;
	private String name;
	//二쇰�쇰쾲�샇
	private String regNum;
	private int totalDistance;
	
	
	private List<Socar_Member_AuthDTO> roles;
	private Rental_CarDTO rentalCar;
}
