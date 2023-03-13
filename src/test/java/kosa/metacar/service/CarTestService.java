package kosa.metacar.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import kosa.metacar.dto.Criteria;
import kosa.metacar.dto.Have_CarDTO;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({
	"file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"
})

@Log4j
public class CarTestService {
	
	@Autowired
	private CarService cs;
	
	/*
	@Test
	public void getList(){
		List<Have_CarDTO>listCar = cs.getCarList();
		listCar.forEach(car -> log.info(car));
	}
	*/
	
	/*
	@Test
	public void pagecheck() {
		Criteria cri = new Criteria();
		List<Have_CarDTO>listCar = cs.carWithPaginggetList(cri);
		cri.setPageNum(1);
		cri.setAmount(6);
		listCar.forEach(car -> log.info(car));
	}
	*/
	
	/*
	@Test
	public void detailservice() {
		String carNum = "321루7449";
		Have_CarDTO havecar = cs.cardetail(carNum);
		log.info(havecar);
	}
	*/

}
