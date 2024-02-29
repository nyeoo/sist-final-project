/*=====================
	GroupDTO.java
=====================*/
package com.itmeetup.mybatis;

public class GroupDTO
{
	private String opCode, memCode, piNickName, pcCode, tjJobCode;	// 개설코드, 회원코드, 닉네임, 참여확인코드, 팀원별 직무코드 
	private String jobName, leaPcCode;								// 직무명, 이탈자
	private String opStartDate, opEndDate;							// 프로젝트시작일, 프로젝트종료일
	private int repSuccess, repGrant, leaNo;						// 업무완료 갯수, 업무 부여 갯수, 이탈번호
	
	// getter / setter 구성
	public String getOpCode()
	{
		return opCode;
	}
	public void setOpCode(String opCode)
	{
		this.opCode = opCode;
	}
	public String getMemCode()
	{
		return memCode;
	}
	public void setMemCode(String memCode)
	{
		this.memCode = memCode;
	}
	public String getPiNickName()
	{
		return piNickName;
	}
	public void setPiNickName(String piNickName)
	{
		this.piNickName = piNickName;
	}
	public String getPcCode()
	{
		return pcCode;
	}
	public void setPcCode(String pcCode)
	{
		this.pcCode = pcCode;
	}
	public String getTjJobCode()
	{
		return tjJobCode;
	}
	public void setTjJobCode(String tjJobCode)
	{
		this.tjJobCode = tjJobCode;
	}
	public String getJobName()
	{
		return jobName;
	}
	public void setJobName(String jobName)
	{
		this.jobName = jobName;
	}
	public String getLeaPcCode()
	{
		return leaPcCode;
	}
	public void setLeaPcCode(String leaPcCode)
	{
		this.leaPcCode = leaPcCode;
	}
	public String getOpStartDate()
	{
		return opStartDate;
	}
	public void setOpStartDate(String opStartDate)
	{
		this.opStartDate = opStartDate;
	}
	public String getOpEndDate()
	{
		return opEndDate;
	}
	public void setOpEndDate(String opEndDate)
	{
		this.opEndDate = opEndDate;
	}
	public int getRepSuccess()
	{
		return repSuccess;
	}
	public void setRepSuccess(int repSuccess)
	{
		this.repSuccess = repSuccess;
	}
	public int getRepGrant()
	{
		return repGrant;
	}
	public void setRepGrant(int repGrant)
	{
		this.repGrant = repGrant;
	}
	public int getLeaNo()
	{
		return leaNo;
	}
	public void setLeaNo(int leaNo)
	{
		this.leaNo = leaNo;
	}
	
	
	
	
	
	
	
}
