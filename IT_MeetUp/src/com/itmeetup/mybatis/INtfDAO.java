/*======================
 	IPickNtfDAO.java
 	- 인터페이스
======================*/

package com.itmeetup.mybatis;

import java.util.ArrayList;

public interface INtfDAO
{
	public ArrayList<NtfDTO> pickNtfList(String memCode);
	public ArrayList<NtfDTO> partCheckNtfList(String memCode);
	public ArrayList<NtfDTO> ddayNtfList(String memCode);
	public ArrayList<NtfDTO> commentNtfList(String memCode);
	public ArrayList<NtfDTO> recommentNtfList(String memCode);
}
