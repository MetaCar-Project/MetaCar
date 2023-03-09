package kosa.metacar.dto;

import java.util.Date;

import lombok.Data;

@Data
public class pay_carDTO {
	private int payNum;
	private int reserveNum;
	private String id;
	private Date payTime;
}
