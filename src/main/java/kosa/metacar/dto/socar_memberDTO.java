package kosa.metacar.dto;

import lombok.Data;

@Data
public class socar_memberDTO {
	private String id;
	private String password;
	private int phone;
	private String name;
	//주민번호
	private int regNum;
	//총주행거리 (등급위해서)
	private int totalDistance;
}
