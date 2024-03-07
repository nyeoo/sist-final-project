package com.itmeetup.mybatis;

public class AdminDTO
{
	private int adNo;								// 관리자 번호
	private String adId, nickName, date ;			// 관리자 아이디, 관리자 닉네임, 등록일자
	
	
	// setter / getter
	public int getAdNo()
	{
		return adNo;
	}
	public void setAdNo(int adNo)
	{
		this.adNo = adNo;
	}
	public String getAdId()
	{
		return adId;
	}
	public void setAdId(String adId)
	{
		this.adId = adId;
	}
	public String getNickName()
	{
		return nickName;
	}
	public void setNickName(String nickName)
	{
		this.nickName = nickName;
	}
	public String getDate()
	{
		return date;
	}
	public void setDate(String date)
	{
		this.date = date;
	}
	
	
}
