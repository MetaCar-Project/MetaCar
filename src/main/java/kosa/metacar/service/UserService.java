package kosa.metacar.service;

import org.springframework.stereotype.Service;

import kosa.metacar.dto.Socar_MemberDTO;


@Service
public interface UserService {
	
	public void createUser(Socar_MemberDTO sm);

	public Socar_MemberDTO signinUser(String id, String password);
}
