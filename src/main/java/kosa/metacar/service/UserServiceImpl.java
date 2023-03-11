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

	
}
