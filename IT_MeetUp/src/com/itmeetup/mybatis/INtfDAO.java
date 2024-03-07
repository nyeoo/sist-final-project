/*======================
 	IPickNtfDAO.java
 	- 인터페이스
======================*/

package com.itmeetup.mybatis;

import java.util.ArrayList;

public interface INtfDAO
{
	public ArrayList<NtfDTO> pickNtfList();
	public ArrayList<NtfDTO> partCheckNtfList();
	public ArrayList<NtfDTO> ddayNtfList();
	public ArrayList<NtfDTO> commentNtfList();
	public ArrayList<NtfDTO> recommentNtfList();
}
