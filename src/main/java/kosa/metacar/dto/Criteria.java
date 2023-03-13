package kosa.metacar.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {

	private int pageNum;
	private int amount;

	private String carType[];
	private String carBig = "";
	private String carMiddle = "";
	private String carSmall = "";
	private String carSUV = "";

	private String keyword = "";
	private int zoneType;

	public Criteria() {
		this(1, 6);
	}

	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}

	public void setCarType(String newType[]) {
		carType = newType;
		for (int i = 0; i < carType.length; i++) {
			if (carType[i].equals("����"))
				carSmall = "����";
			if (carType[i].equals("����"))
				carMiddle = "����";
			if (carType[i].equals("����"))
				carBig = "����";
			if (carType[i].equals("SUV"))
				carSUV = "suv";
		}
	}

}
