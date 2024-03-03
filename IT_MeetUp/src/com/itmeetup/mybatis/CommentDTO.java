package com.itmeetup.mybatis;


public class CommentDTO
{
	// 주요 속성 구성 
	private String number, renuber , content , date, nickname,name ;

	public String getNumber()
	{
		return number;
	}

	public void setNumber(String number)
	{
		this.number = number;
	}

	// getter / setter 
	public String getRenuber()
	{
		return renuber;
	}

	public void setRenuber(String renuber)
	{
		this.renuber = renuber;
	}

	public String getContent()
	{
		return content;
	}

	public void setContent(String content)
	{
		this.content = content;
	}

	public String getDate()
	{
		return date;
	}

	public void setDate(String date)
	{
		this.date = date;
	}

	public String getNickname()
	{
		return nickname;
	}

	public void setNickname(String nickname)
	{
		this.nickname = nickname;
	}

	public String getName()
	{
		return name;
	}

	public void setName(String name)
	{
		this.name = name;
	}
	
	
	
}
