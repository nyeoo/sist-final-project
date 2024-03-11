package com.itmeetup.mybatis;

import java.util.ArrayList;

public interface IAssignmentListDAO
{
	public ArrayList<AssignmentDTO> assignmentList(String opCode);
	public ArrayList<AssignmentDTO> assScheduleList();
	public ArrayList<AssignmentDTO> assOutputList();
	public String searchOpCode(String memCode);
	public String searchPcCode(String memCode);
	public String searchLeaveLeader(String leaderPcCode);
	public String searchLeaderMemCode(String lederOpCode);
	public String searchLeaderPcCode(String leaderMemCode);
	public String searchChangeLeaderMemCode(String opCode);
	public String searchChangeLeaderPcCode(String opCode);
	
}
