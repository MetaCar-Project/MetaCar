package kosa.metacar.mapper;

import org.apache.ibatis.annotations.Param;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import kosa.metacar.dto.Socar_MemberDTO;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({
	"file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
	"file:src/main/webapp/WEB-INF/spring/security-context.xml"
})

@Log4j
public class UserTestMapper {

	@Autowired
	private UserMapper um;
	
	@Autowired
	private PasswordEncoder pe;
	/*
	@Test
	public void testuser() {
		Socar_MemberDTO sm = new Socar_MemberDTO();
		sm.setId("123");
		um.userGet(sm);
		
		Socar_MemberDTO sm = um.getUserByIdAndPassword("kosa00", "1234");
		
		if (sm == null) {
			// �쉶�썝 �젙蹂닿� �뾾�뒗 寃쎌슦 濡쒓렇�씤 �떎�뙣 泥섎━
			log.info("================fail");
			
			
			
		} else {
			// �쉶�썝 �젙蹂닿� �엳�뒗 寃쎌슦 濡쒓렇�씤 �꽦怨� 泥섎━
			log.info("================success");
			
		}
	}
	*/
	/*
	@Test
	public void testInsert() {
		Socar_MemberDTO sm = new Socar_MemberDTO();
		sm.setId("kosa00");
		String passowrd = pe.encode("1234");
		sm.setPassword(passowrd);
		sm.setName("테스트");
		sm.setPhone("01099277043");
		um.userCreate(sm);	
	}
	*/
	/*
	@Test
	public void testSelect() {
		Socar_MemberDTO sm = um.getUserByIdAndPassword("kosa00");
		log.warn(sm);
	}
	*/
	
	@Test
	public void testId() {
		log.warn(um.idGet("123456"));
	}
	
	
	
	
	
}
