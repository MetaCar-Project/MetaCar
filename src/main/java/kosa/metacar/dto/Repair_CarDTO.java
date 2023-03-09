package kosa.metacar.dto;

import java.util.Date;

import lombok.Data;

@Data
public class Repair_CarDTO {
	private int repairNum;
	private String carNum;
	private Date repairDate;
	//수리내용
	private String repairInfo;
}
