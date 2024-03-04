package com.itmeetup.mybatis;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

public interface IMemberDAO
{
	// 로그인
	public MemberDTO getMember(@Param("piId") String piId, @Param("piPw") String piPw);	// 일반회원 로그인 조회
	public MemberDTO getAdmin(@Param("piId") String piId, @Param("piPw") String piPw); // 관리자 로그인 조회

	// 회원가입
	public ArrayList<JobDTO> jobs();	// 직업 select
	public ArrayList<MeetDTO> meets();	// 모임방식 select
}
