package kosa.metacar.service;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import kosa.metacar.dto.Socar_MemberDTO;
import kosa.metacar.mapper.RentalMapper;
import kosa.metacar.mapper.UserMapper;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserMapper mapper;
	private HttpSession session;

	@Override
	public void createUser(Socar_MemberDTO sm) {
		mapper.userCreate(sm);
		
	}



	
	



	


}
