package kosa.metacar.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kosa.metacar.dto.Socar_MemberDTO;
import kosa.metacar.mapper.ProfileMapper;
import kosa.metacar.mapper.RentalMapper;

@Service
public class ProfileServiceImpl  implements ProfileService{

	@Autowired
	private ProfileMapper mapper;
	@Autowired
	private RentalMapper mapper2;
	
	@Override
	public Socar_MemberDTO detailUser(String id) {
		
		return mapper2.getRental(id)==null? mapper.userDetail2(id) : mapper.userDetail(id);
	}

	@Override
	public boolean updateUser(Socar_MemberDTO sm) {
		if(mapper.userUpdate(sm)==1) {
			return true;
		}
		else {
			return false;
		}
	}

}
