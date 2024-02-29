/*=====================
	GroupDTO.java
=====================*/
package com.itmeetup.mybatis;

public class GroupDTO
{
	private String OP_CODE, MEM_CODE, PI_NICKNAME, PC_CODE;	// 개설코드, 회원코드, 닉네임, 참여확인코드 
	private String OP_START_DATE, OP_END_DATE;		// 프로젝트시작일, 프로젝트종료일
	
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
	
	
}
