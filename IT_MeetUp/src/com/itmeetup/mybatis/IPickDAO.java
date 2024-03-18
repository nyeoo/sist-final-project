package com.itmeetup.mybatis;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

public interface IPickDAO
{
	// 해당 직무의 지원한 사람 보여주기 
	public ArrayList<PickDTO> sinchungList(String code); 
	
	// 신청할 정보 뿌려주기
	public ArrayList<PickDTO> sinchung(String code);
	
	// 프로젝트 신청하기
	public int projectJoin(PickDTO dto);
	
	// 픽 하기
	public int pickUpdate(PickDTO dto);
	
	// 해당 직무 신청했는지 안한지 보는 함수
	public int countSinchung(@Param("memcode") String memcode ,@Param("tjno") int tjno );
	
}
