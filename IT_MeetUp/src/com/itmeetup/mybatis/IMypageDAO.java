package com.itmeetup.mybatis;

import org.apache.ibatis.annotations.Param;

public interface IMypageDAO
{
	public MemberDTO getMyinfo(String piMemCode);	// 마이페이지 회원 뿌리기
	public int myInfoCheckId(@Param("piMemCode") String piMemCode, @Param("piId") String piId);						// 아이디 중복 체크
	public int myInfoCeckNickname(@Param("piMemCode") String piMemCode, @Param("piNickname") String piNickname);			// 닉네임 중복 체크
	public int myInfoModify(MemberDTO member);	// 정보 수정
}
