package kosa.metacar.mapper;

import java.util.List;

import kosa.metacar.dto.Criteria;
import kosa.metacar.dto.Have_CarDTO;


public interface CarMapper {
	
	public List<Have_CarDTO> cargetList();
	public List<Have_CarDTO> carWithPaginggetList(Criteria cri);
	public Have_CarDTO cargetDetail(String carNum);

}
