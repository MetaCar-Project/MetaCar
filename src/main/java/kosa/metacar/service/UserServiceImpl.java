package kosa.metacar.service;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kosa.metacar.dto.Socar_MemberDTO;

import kosa.metacar.mapper.UserMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper mapper;
	@Autowired
	private PasswordEncoder pe;

	
	@Override
	@Transactional
	public void createUser(Socar_MemberDTO sm) {
		String pw = sm.getPassword();
		sm.setPassword(pe.encode(pw));
		mapper.userCreate(sm);
		mapper.userRole(sm.getId());
	}

	
}
