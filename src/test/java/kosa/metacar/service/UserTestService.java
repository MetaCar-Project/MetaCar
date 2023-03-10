package kosa.metacar.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import kosa.metacar.dto.Socar_MemberDTO;
import kosa.metacar.mapper.UserMapper;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({
	"file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"
})

@Log4j
public class UserTestService {

	@Autowired
	private UserService us;
	private UserMapper um;
	
	
	@Test
	public void signinUserTest() {
		
		Socar_MemberDTO sm = us.signinUser("kosa00", "1234");
		
		if (sm == null) {
			// 회원 정보가 없는 경우 로그인 실패 처리
			log.info("==============fail");
			
			
			
			
		} else {
			// 회원 정보가 있는 경우 로그인 성공 처리
			
			log.info("=================success");
			
		}
	}
}
