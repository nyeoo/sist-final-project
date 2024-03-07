/*======================
 	IBlockDAO.java
 	- 인터페이스
======================*/

package com.itmeetup.mybatis;

import java.util.ArrayList;

public interface IBlockDAO
{
	public ArrayList<BlockDTO> blockList();			// 차단 리스트 조회 쿼리문
	public int remove(int bloNo);					// 차단 회원 해제(삭제)
}
