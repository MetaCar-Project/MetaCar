package kosa.metacar.DTO;

import java.util.Date;

import lombok.Data;

@Data
public class Return_CarDTO {
	private int reserveNum;
	private String id;
	private Date returnTime;
	private int useTime;
}
