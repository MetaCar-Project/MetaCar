package kosa.metacar.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kosa.metacar.dto.Socar_MemberDTO;
import kosa.metacar.mapper.RentalMapper;
import kosa.metacar.mapper.UserMapper;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserMapper mapper;

	@Override
	public void createUser(Socar_MemberDTO sm) {
		mapper.userCreate(sm);
		
	}
	


}
