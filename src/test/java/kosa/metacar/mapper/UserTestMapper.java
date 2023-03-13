package kosa.metacar.mapper;

import org.apache.ibatis.annotations.Param;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import kosa.metacar.dto.Socar_MemberDTO;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({
	"file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"
})

@Log4j
public class UserTestMapper {

	@Autowired
	private UserMapper um;
	
//	@Test
//	public void signinUserTest() {
//		
//		Socar_MemberDTO sm = um.getUserByIdAndPassword("kosa00", "1234");
//		
//		if (sm == null) {
//			// 회원 정보가 없는 경우 로그인 실패 처리
//			log.info("================fail");
//			
//			
//			
//		} else {
//			// 회원 정보가 있는 경우 로그인 성공 처리
//			log.info("================success");
//			
//		}
//	}
	
//	@Test
//	public void testaccount() {
//		
//		Socar_MemberDTO sm = new Socar_MemberDTO();
//		sm.setId("123");
//		sm.setName("ㅎㅇㅊ");
//		sm.setPassword("1234");
//		sm.setPhone("12314");
//		sm.setRegNum("12341234");
//		um.userCreate(sm);
//		
//		log.info(sm);
//	}
	@Test
	public void testuser() {
		Socar_MemberDTO sm = new Socar_MemberDTO();
		sm.setId("123");
		um.userGet(sm);
		
		log.info(sm);
	}
	
}
