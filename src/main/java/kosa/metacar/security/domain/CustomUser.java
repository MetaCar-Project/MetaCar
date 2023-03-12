package kosa.metacar.security.domain;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;



import kosa.metacar.dto.Socar_MemberDTO;
import lombok.Data;

@Data
public class CustomUser extends User{


	private static final long serialVersionUID = 1L;

	private Socar_MemberDTO sm;
	
	public CustomUser(String username, String password, Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);
		
	}
	
	public CustomUser(Socar_MemberDTO sm) {
		super(sm.getId(), sm.getPassword(),	sm.getRoles().stream()
														.map(auth -> new SimpleGrantedAuthority(auth.getAuth()))
														.collect(Collectors.toList()));
		this.sm=sm;
		
	}


}
