package kosa.metacar.DTO;

import lombok.Data;

@Data
public class Socar_MemberDTO {
	private String id;
	private String password;
	private int phone;
	private String name;
	//주민번호
	private int regNum;
	//총주행거리 (등급위해서)
	private int totalDistance;
}
