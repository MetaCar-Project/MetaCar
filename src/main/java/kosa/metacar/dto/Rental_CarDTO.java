package kosa.metacar.dto;

import java.util.Date;

import lombok.Data;

@Data
public class Rental_CarDTO {
	private int reserveNum;
	private String id;
	//대여신청시간
	private Date reserveTime;
	//이용할시간
	private int useTime;
	//반납주소
	private String returnAdd;
	private int sczoneNum;
	private String carNum;
	private String reservenow;
	
	
	
//	private Have_CarDTO haveCar;
}
