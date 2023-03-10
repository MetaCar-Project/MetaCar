package kosa.metacar.service;

import org.springframework.stereotype.Service;

import kosa.metacar.dto.Socar_MemberDTO;

@Service
public interface ProfileService {
	public Socar_MemberDTO detailUser(String id);
	public boolean updateUser(Socar_MemberDTO sm);
}
