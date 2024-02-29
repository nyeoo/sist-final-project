/*======================
 	IIndictDAO.java
 	- 인터페이스
======================*/

package com.itmeetup.mybatis;

import java.util.ArrayList;

public interface IIndictDAO
{
	public ArrayList<IndictDTO> teamOpenIdtList();			//-- 리스트 조회
	public ArrayList<IndictDTO> commentIdtList();			//-- 리스트 조회
	public ArrayList<IndictDTO> recommentIdtList();			//-- 리스트 조회
	public ArrayList<IndictDTO> assignmentIdtList();		//-- 리스트 조회
	public ArrayList<IndictDTO> reportIdtList();			//-- 리스트 조회
	public ArrayList<IndictDTO> weeklyIdtList();			//-- 리스트 조회
	
	public int teamOpenIdtListUpdate(IndictDTO indict);		//-- 팀 개설요청 신고 업데이트
	
}
