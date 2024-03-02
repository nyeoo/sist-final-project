package com.itmeetup.mybatis;

import org.apache.ibatis.annotations.Param;

public interface IMemberDAO
{
	public MemberDTO getMember(@Param("piId") String piId, @Param("piPw") String piPw);	// 일반회원 로그인 조회
	public MemberDTO getAdmin(@Param("piId") String piId, @Param("piPw") String piPw); // 관리자 로그인 조회

	
}
