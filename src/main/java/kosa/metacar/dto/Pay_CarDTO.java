package kosa.metacar.dto;

import java.util.Date;

import lombok.Data;

@Data
public class Pay_CarDTO {
	private int payNum;
	private int reserveNum;
	private String id;
	private Date payTime;
}
