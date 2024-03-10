package com.itmeetup.mybatis;

import java.util.ArrayList;

public interface IPickDAO
{
	// 해당 직무의 지원한 사람 보여주기 
	public ArrayList<PickDTO> sinchungList(String code); 
	
	// 신청할 정보 뿌려주기
	public ArrayList<PickDTO> sinchung(String code);
	
}
