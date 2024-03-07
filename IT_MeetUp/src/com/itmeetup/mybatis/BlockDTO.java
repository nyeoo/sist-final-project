package com.itmeetup.mybatis;

public class BlockDTO
{
	private String bloNo, bloDate, nickname; 	// 차단 번호, 차단 일자, 차단 회원 닉네임

	public String getBloNo()
	{
		return bloNo;
	}

	public void setBloNo(String bloNo)
	{
		this.bloNo = bloNo;
	}

	public String getBloDate()
	{
		return bloDate;
	}

	public void setBloDate(String bloDate)
	{
		this.bloDate = bloDate;
	}

	public String getNickname()
	{
		return nickname;
	}

	public void setNickname(String nickname)
	{
		this.nickname = nickname;
	}
	
	
}
