/*=====================
	GroupDTO.java
=====================*/
package com.itmeetup.mybatis;

public class GroupDTO
{
	private String OP_CODE, MEM_CODE, PI_NICKNAME, PC_CODE, TJ_JOB_CODE;	// 개설코드, 회원코드, 닉네임, 참여확인코드, 팀원별 직무코드 
	private String JOB_NAME, LEA_PC_CODE;									// 직무명, 이탈자
	private String OP_START_DATE, OP_END_DATE;								// 프로젝트시작일, 프로젝트종료일
	private int REP_SUCCESS, REP_GRANT, LEA_NO;								// 업무완료 갯수, 업무 부여 갯수, 이탈번호
	
	// getter / setter 구성
	public String getOP_CODE()
	{
		return OP_CODE;
	}
	public void setOP_CODE(String oP_CODE)
	{
		OP_CODE = oP_CODE;
	}
	public String getMEM_CODE()
	{
		return MEM_CODE;
	}
	public void setMEM_CODE(String mEM_CODE)
	{
		MEM_CODE = mEM_CODE;
	}
	public String getPI_NICKNAME()
	{
		return PI_NICKNAME;
	}
	public void setPI_NICKNAME(String pI_NICKNAME)
	{
		PI_NICKNAME = pI_NICKNAME;
	}
	public String getPC_CODE()
	{
		return PC_CODE;
	}
	public void setPC_CODE(String pC_CODE)
	{
		PC_CODE = pC_CODE;
	}
	public String getTJ_JOB_CODE()
	{
		return TJ_JOB_CODE;
	}
	public void setTJ_JOB_CODE(String tJ_JOB_CODE)
	{
		TJ_JOB_CODE = tJ_JOB_CODE;
	}
	public String getJOB_NAME()
	{
		return JOB_NAME;
	}
	public void setJOB_NAME(String jOB_NAME)
	{
		JOB_NAME = jOB_NAME;
	}
	public String getLEA_PC_CODE()
	{
		return LEA_PC_CODE;
	}
	public void setLEA_PC_CODE(String lEA_PC_CODE)
	{
		LEA_PC_CODE = lEA_PC_CODE;
	}
	public String getOP_START_DATE()
	{
		return OP_START_DATE;
	}
	public void setOP_START_DATE(String oP_START_DATE)
	{
		OP_START_DATE = oP_START_DATE;
	}
	public String getOP_END_DATE()
	{
		return OP_END_DATE;
	}
	public void setOP_END_DATE(String oP_END_DATE)
	{
		OP_END_DATE = oP_END_DATE;
	}
	public int getREP_SUCCESS()
	{
		return REP_SUCCESS;
	}
	public void setREP_SUCCESS(int rEP_SUCCESS)
	{
		REP_SUCCESS = rEP_SUCCESS;
	}
	public int getREP_GRANT()
	{
		return REP_GRANT;
	}
	public void setREP_GRANT(int rEP_GRANT)
	{
		REP_GRANT = rEP_GRANT;
	}
	public int getLEA_NO()
	{
		return LEA_NO;
	}
	public void setLEA_NO(int lEA_NO)
	{
		LEA_NO = lEA_NO;
	}
	
	
	
	
}
