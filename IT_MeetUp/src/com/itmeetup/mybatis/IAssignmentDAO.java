package com.itmeetup.mybatis;

import java.util.ArrayList;

public interface IAssignmentDAO
{
	public ArrayList<AssignmentDTO> assignmentList(String opCode);
	public ArrayList<AssignmentDTO> assScheduleList();
	public ArrayList<AssignmentDTO> assOutputList();
	public String searchOpCode(String memCode);
	public String searchPcCode(String memCode);
	public void insertAssignment(AssignmentDTO dto);
	
}
