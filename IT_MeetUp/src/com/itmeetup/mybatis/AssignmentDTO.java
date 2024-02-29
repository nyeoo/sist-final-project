/*=====================
	AssignmentDTO.java
=====================*/
package com.itmeetup.mybatis;

public class AssignmentDTO
{
	private String ASS_CODE, ASS_NAME, ASS_CONTENT; 		// 업무할당 코드, 업무할당명, 업무할당 내용 
	private String INDICATOR, CHARGER;						// 업무지시자, 업무담당자
	private String ASS_START_DATE, ASS_END_DATE, ASS_DATE;	// 업무시작지시일, 업무종료지시일, 업무할당일
	private String ASS_FILE, ASS_OU_CODE, OU_NAME;			// 할당첨무파일경로, 할당산출물 명
	private String ASS_SD_NO;								// 기간 상세 코드
	
	
	// getter / setter 구성
	public String getASS_CODE()
	{
		return ASS_CODE;
	}
	public void setASS_CODE(String aSS_CODE)
	{
		ASS_CODE = aSS_CODE;
	}
	public String getASS_NAME()
	{
		return ASS_NAME;
	}
	public void setASS_NAME(String aSS_NAME)
	{
		ASS_NAME = aSS_NAME;
	}
	public String getASS_CONTENT()
	{
		return ASS_CONTENT;
	}
	public void setASS_CONTENT(String aSS_CONTENT)
	{
		ASS_CONTENT = aSS_CONTENT;
	}
	public String getINDICATOR()
	{
		return INDICATOR;
	}
	public void setINDICATOR(String iNDICATOR)
	{
		INDICATOR = iNDICATOR;
	}
	public String getCHARGER()
	{
		return CHARGER;
	}
	public void setCHARGER(String cHARGER)
	{
		CHARGER = cHARGER;
	}
	public String getASS_START_DATE()
	{
		return ASS_START_DATE;
	}
	public void setASS_START_DATE(String aSS_START_DATE)
	{
		ASS_START_DATE = aSS_START_DATE;
	}
	public String getASS_END_DATE()
	{
		return ASS_END_DATE;
	}
	public void setASS_END_DATE(String aSS_END_DATE)
	{
		ASS_END_DATE = aSS_END_DATE;
	}
	public String getASS_DATE()
	{
		return ASS_DATE;
	}
	public void setASS_DATE(String aSS_DATE)
	{
		ASS_DATE = aSS_DATE;
	}
	public String getASS_FILE()
	{
		return ASS_FILE;
	}
	public void setASS_FILE(String aSS_FILE)
	{
		ASS_FILE = aSS_FILE;
	}
	public String getASS_OU_CODE()
	{
		return ASS_OU_CODE;
	}
	public void setASS_OU_CODE(String aSS_OU_CODE)
	{
		ASS_OU_CODE = aSS_OU_CODE;
	}
	public String getOU_NAME()
	{
		return OU_NAME;
	}
	public void setOU_NAME(String oU_NAME)
	{
		OU_NAME = oU_NAME;
	}
	public String getASS_SD_NO()
	{
		return ASS_SD_NO;
	}
	public void setASS_SD_NO(String aSS_SD_NO)
	{
		ASS_SD_NO = aSS_SD_NO;
	}

	
	
}
