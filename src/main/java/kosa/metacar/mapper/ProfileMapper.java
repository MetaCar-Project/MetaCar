package kosa.metacar.mapper;

import kosa.metacar.dto.Socar_MemberDTO;

public interface ProfileMapper {
	public Socar_MemberDTO userDetail(String id);
	public int userUpdate(Socar_MemberDTO sm);
}
