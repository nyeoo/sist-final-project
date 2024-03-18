/*======================
 	IAdminDAO.java
 	- 인터페이스
======================*/

package com.itmeetup.mybatis;

import java.util.ArrayList;

public interface IAdminDAO
{
	public ArrayList<AdminDTO> adminList(int memCode);
}
