package kosa.metacar.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import kosa.metacar.dto.DistanceDTO;
import kosa.metacar.dto.Have_CarDTO;
import kosa.metacar.dto.Socar_MemberDTO;
import kosa.metacar.service.RentalService;
import kosa.metacar.service.UserService;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class RentalTest {

	@Autowired
	private RentalService service;
	
	@Autowired
	private RentalMapper mapper;
	/*
	@Test
	public void getMoneyTest() {
		Have_CarDTO hc1 = new Have_CarDTO();
		hc1.setCarNum("321루7449");
		Have_CarDTO hc = mapper.carGet(hc1);
		log.warn(hc);
		log.info("123123123123123123123123123123123123");
	}*/
	
	@Test
	public void update() {
		log.warn("update ========================================== : " + mapper.carUpdate("321루7449"));
	}
}
