package kosa.metacar.service;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kosa.metacar.dto.Socar_MemberDTO;

import kosa.metacar.mapper.UserMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper mapper;

	@Override
	public void createUser(Socar_MemberDTO sm) {
		mapper.userCreate(sm);

	}

	@Override
	public Socar_MemberDTO signinUser(@Param("id") String id, @Param("password") String password) {
		Socar_MemberDTO sm = mapper.getUserByIdAndPassword(id, password);
		if (sm == null) {
			// 회원 정보가 없는 경우 로그인 실패 처리
			return null;
		} else {
			// 회원 정보가 있는 경우 로그인 성공 처리
			log.info(sm);
			return sm;
		}
	}
}
