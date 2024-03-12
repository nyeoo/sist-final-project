/*================================
 	IProjectManagementDAO.java
 	- 인터페이스
=================================*/

package com.itmeetup.mybatis;

import java.util.ArrayList;

public interface IProjectManagementDAO
{
	// 신청한 프로젝트 리스트
	public ArrayList<ProjectManagementDTO> applyProject(String memCode);
	
	// 작성한 프로젝트 리스트
	public ArrayList<ProjectManagementDTO> writeProject(String memCode);
}
