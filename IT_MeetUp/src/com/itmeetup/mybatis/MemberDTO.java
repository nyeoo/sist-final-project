/*======================
 	MemberDTO.java
======================*/

package com.itmeetup.mybatis;

import java.util.Date;

public class MemberDTO
{
	private int admin;	// 관리자여부
	private String piMemCode, piName, piEmail, piImgFile, piId, piPw, piNickname, piSelfment;	// 회원코드, 이름, 이메일, 이미지 파일명, 아이디, 비밀번호, 닉네임, 짧은 한마디
	private String mJobCode, mMetCode, mSiggCode;	// 직무코드, 모임방식 코드, 시군구 코드
	private Date mDate;// 등록일자
	
	// getter / setter 
	public int getAdmin()
	{
		return admin;
	}
	public void setAdmin(int admin)
	{
		this.admin = admin;
	}
	public String getPiMemCode()
	{
		return piMemCode;
	}
	public void setPiMemCode(String piMemCode)
	{
		this.piMemCode = piMemCode;
	}
	public String getPiName()
	{
		return piName;
	}
	public void setPiName(String piName)
	{
		this.piName = piName;
	}
	public String getPiEmail()
	{
		return piEmail;
	}
	public void setPiEmail(String piEmail)
	{
		this.piEmail = piEmail;
	}
	public String getPiImgFile()
	{
		return piImgFile;
	}
	public void setPiImgFile(String piImgFile)
	{
		this.piImgFile = piImgFile;
	}
	public String getPiId()
	{
		return piId;
	}
	public void setPiId(String piId)
	{
		this.piId = piId;
	}
	public String getPiPw()
	{
		return piPw;
	}
	public void setPiPw(String piPw)
	{
		this.piPw = piPw;
	}
	public String getPiNickname()
	{
		return piNickname;
	}
	public void setPiNickname(String piNickname)
	{
		this.piNickname = piNickname;
	}
	public String getPiSelfment()
	{
		return piSelfment;
	}
	public void setPiSelfment(String piSelfment)
	{
		this.piSelfment = piSelfment;
	}
	public String getmJobCode()
	{
		return mJobCode;
	}
	public void setmJobCode(String mJobCode)
	{
		this.mJobCode = mJobCode;
	}
	public String getmMetCode()
	{
		return mMetCode;
	}
	public void setmMetCode(String mMetCode)
	{
		this.mMetCode = mMetCode;
	}
	public String getmSiggCode()
	{
		return mSiggCode;
	}
	public void setmSiggCode(String mSiggCode)
	{
		this.mSiggCode = mSiggCode;
	}
	public Date getmDate()
	{
		return mDate;
	}
	public void setmDate(Date mDate)
	{
		this.mDate = mDate;
	}
	
	
}
