package kosa.metacar.mapper;

import java.util.Collection;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.ui.Model;

import kosa.metacar.dto.Cancel_CarDTO;
import kosa.metacar.dto.DistanceDTO;
import kosa.metacar.dto.Have_CarDTO;
import kosa.metacar.dto.Rental_CarDTO;
import kosa.metacar.dto.Return_CarDTO;
import kosa.metacar.dto.Socar_MemberDTO;
import kosa.metacar.service.RentalService;
import kosa.metacar.service.UserService;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
						"file:src/main/webapp/WEB-INF/spring/security-context.xml"})

@Log4j

public class RentalTest {

	@Autowired
	private RentalService service;
	
	@Autowired
	private RentalMapper rm;
	@Autowired
	private UserMapper um;
	
	@Autowired
	private ReturnMapper retm;
	
	
//	@Test
//	public void returnTest() {
//		
//			Rental_CarDTO rc = new Rental_CarDTO();
//			
//			Return_CarDTO retc = new Return_CarDTO();
//			
//			
//			rc.setReserveNum(1);
//			rc.setId("123");
//			rc.setCarNum("321루7449");
//			rc.setUseTime(3);
//			retc.setReserveNum(rc.getReserveNum());
//			retc.setId(rc.getId());
//			retc.setUseTime(rc.getUseTime());
//			retm.carReturnox(rc.getReserveNum());
//			retm.carReturn(retc);
//			retm.returnUpdate(rc.getCarNum());
//			
//			
//			log.warn(retc);
//	}
	/*
	@Test
	public void getMoneyTest() {
		Have_CarDTO hc1 = new Have_CarDTO();
		hc1.setCarNum("321루7449");
		Have_CarDTO hc = mapper.carGet(hc1);
		log.warn(hc);
		log.info("123123123123123123123123123123123123");
	}*/
	
//	@Test
//	public void update() {
//		log.warn("update ========================================== : " + mapper.carUpdate("321루7449"));
//	}
	
	
//	@Test
//	public void testrental() {
//		
//		 Have_CarDTO hc = new Have_CarDTO(); Rental_CarDTO rc = new Rental_CarDTO();
//		 Socar_MemberDTO sm = new Socar_MemberDTO(); hc.setCarNum("321루7449");
//		 sm.setId("123");
//		 
//		 rm.carGet(hc);
//		 
//		 
//		 
//		 rc.setReserveNum(1); 
//		 rc.setId(sm.getId()); 
//		 rc.setUseTime(3);
//		 rc.setReturnAdd("가락시장"); 
//		 rc.setSczoneNum(1);
//		 rc.setCarNum(rm.carGet(hc).getCarNum()); 
//		 rc.setReservenow("o");
//		 
//		 
//		 log.warn("]======================================"); rm.carRental(rc);
//		 rm.carUpdate(rc.getCarNum());
//		
//		
//		log.warn("======================");
//		
//		
//		
//	}
	
//	@Test
//	public void cancelrental() {
//		Rental_CarDTO rc = new Rental_CarDTO();
//		
//		Cancel_CarDTO cc = new Cancel_CarDTO();
//		
//		
//		rc.setReserveNum(5);
//		rc.setId("sdh1541");
//		rc.setCarNum("157로2940");
//		
//		cc.setReserveNum(rc.getReserveNum());
//		cc.setId(rc.getId());
//		cc.setCancelWhy("~~~");
//		rm.carCancelox(rc.getReserveNum());
//		rm.carCancel(cc);
//		rm.cancelUpdate(rc.getCarNum());
//		
//		
//		log.warn(cc);
//		
//		
//	}
	
//	@Test
//	public void test() {
//		log.warn(rm.getCancel("sdh1541"));
//	}
}
