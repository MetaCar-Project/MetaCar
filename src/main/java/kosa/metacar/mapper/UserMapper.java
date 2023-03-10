package kosa.metacar.mapper;

import org.apache.ibatis.annotations.Param;

import kosa.metacar.dto.Socar_MemberDTO;


public interface UserMapper {
	public void userCreate(Socar_MemberDTO sm);
	
	public Socar_MemberDTO getUserByIdAndPassword(@Param("id") String id, @Param("password") String password);
	
}
   
