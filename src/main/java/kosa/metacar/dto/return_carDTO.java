package kosa.metacar.dto;

import java.util.Date;

import lombok.Data;

@Data
public class return_carDTO {
	private int reserveNum;
	private String id;
	private Date returnTime;
	private int useTime;
}
