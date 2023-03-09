package kosa.metacar.dto;

import java.util.Date;

import lombok.Data;

@Data
public class cancel_carDTO {
	//예약번호
	private int reserveNum;
	private String id;
	//취소사유
	private String cancelWhy;
	//취소일자
	private Date cancelDate;
}
