package kosa.metacar.DTO;

import java.util.Date;

import lombok.Data;

@Data
public class Cancel_CarDTO {
	//예약번호
	private int reserveNum;
	private String id;
	//취소사유
	private String cancelWhy;
	//취소일자
	private Date cancelDate;
}
