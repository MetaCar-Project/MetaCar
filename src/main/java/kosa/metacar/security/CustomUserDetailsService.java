package kosa.metacar.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import kosa.metacar.dto.Socar_MemberDTO;
import kosa.metacar.mapper.UserMapper;
import kosa.metacar.security.domain.CustomUser;
import lombok.extern.log4j.Log4j;

@Log4j
public class CustomUserDetailsService implements UserDetailsService{
	
	@Autowired
	private UserMapper mapper;
	
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		log.warn("ID : " + username);
	
		//username is id
		Socar_MemberDTO sm = mapper.getUserByIdAndPassword(username);
		
		log.warn(sm);
	
		return sm == null? null : new CustomUser(sm);
	}

}
