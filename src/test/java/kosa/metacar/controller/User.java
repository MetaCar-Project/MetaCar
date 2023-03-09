package kosa.metacar.controller;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import kosa.metacar.dto.Socar_MemberDTO;

import kosa.metacar.service.UserService;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class User {
	@Autowired
	UserService serivce;

	@Test
	public void createUserTest() {

		Socar_MemberDTO sc = new Socar_MemberDTO();

		sc.setId("kosa01");
		sc.setPassword("1234");
		sc.setName("한예찬");
		sc.setPhone("123-4564-7896");
		sc.setRegNum("950830");

		serivce.createUser(sc);
		log.info(sc);
//		
//		log.info("------------------------------" + mapper.test());
//		
//	}

	}
}
