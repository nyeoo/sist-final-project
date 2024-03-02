/*======================
 	IIndictDAO.java
 	- 인터페이스
======================*/

package com.itmeetup.mybatis;

import java.util.ArrayList;

public interface IIndictDAO
{
	public ArrayList<IndictDTO> teamOpenIdtList();			//-- 팀 개설요청 신고 리스트 조회
	public ArrayList<IndictDTO> commentIdtList();			//-- 댓글 신고 리스트 조회
	public ArrayList<IndictDTO> recommentIdtList();			//-- 대댓글 신고 리스트 조회
	public ArrayList<IndictDTO> assignmentIdtList();		//-- 업무할당 신고 리스트 조회
	public ArrayList<IndictDTO> reportIdtList();			//-- 업무보고 신고 리스트 조회
	public ArrayList<IndictDTO> weeklyIdtList();			//-- 주간업무보고 신고 리스트 조회
	
	public int teamOpenIdtListUpdate(IndictDTO indict);		//-- 팀 개설요청 신고 업데이트
	public int commentIdtListUpdate(IndictDTO indict);		//-- 댓글 신고 업데이트
	public int recommentIdtListUpdate(IndictDTO indict);	//-- 대댓글 신고 업데이트
	public int assignmentIdtListUpdate(IndictDTO indict);	//-- 업무할당 신고 업데이트
	public int reportIdtListUpdate(IndictDTO indict);		//-- 업무보고 신고 업데이트
	public int weeklyIdtListUpdate(IndictDTO indict);		//-- 주간업무보고 신고 업데이트
	
}
