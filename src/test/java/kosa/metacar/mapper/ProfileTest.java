package kosa.metacar.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import kosa.metacar.dto.Socar_MemberDTO;
import kosa.metacar.service.ProfileService;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ProfileTest {
	
	@Autowired
	private ProfileMapper mapper;
	
	@Autowired
	private ProfileService service;
	/*
	@Test
	public void profileTest() {
		log.warn(mapper.userDetail("p21356"));
	}
	*/
	/*
	@Test 
	public void serviceTest() {
		log.warn(service.detailUser("p21356"));
	}
	*/
	/*
	@Test
	public void userUpdateTest() {
		Socar_MemberDTO sm = new Socar_MemberDTO();
		sm.setId("p21356");
		sm.setPhone("01099277032");
		log.warn(mapper.userUpdate(sm));
	}
	*/
	
	@Test
	public void userUpdateTest() {
		Socar_MemberDTO sm = new Socar_MemberDTO();
		sm.setId("p21356");
		sm.setPhone("01026805401");
		log.warn(" =======================바뀌었나요" + service.updateUser(sm));
	}
	
	
	
	
	
	
	
}
