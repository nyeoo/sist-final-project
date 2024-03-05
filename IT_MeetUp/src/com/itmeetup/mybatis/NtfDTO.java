package com.itmeetup.mybatis;

public class NtfDTO
{	
	private String pnNo, opCode, memCode, job, title, pickDate;	// 픽 알림 번호, 개설 요청 코드, 회원 번호, 직무, 제목, 픽된 날짜
	private String pcnNo, pcDate;								// 참여지원 확인 알림에 필요한 (참여확인알림 번호, 참여확정일자)
	private String dnNo;										// 디데이 알림에 필요한 (디데이 알림 번호)

	// getter / setter 
	public String getPnNo()
	{
		return pnNo;
	}
	public void setPnNo(String pnNo)
	{
		this.pnNo = pnNo;
	}
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
	public String getJob()
	{
		return job;
	}
	public void setJob(String job)
	{
		this.job = job;
	}
	public String getTitle()
	{
		return title;
	}
	public void setTitle(String title)
	{
		this.title = title;
	}
	public String getPickDate()
	{
		return pickDate;
	}
	public void setPickDate(String pickDate)
	{
		this.pickDate = pickDate;
	}
	public String getPcnNo()
	{
		return pcnNo;
	}
	public void setPcnNo(String pcnNo)
	{
		this.pcnNo = pcnNo;
	}
	public String getPcDate()
	{
		return pcDate;
	}
	public void setPcDate(String pcDate)
	{
		this.pcDate = pcDate;
	}
	
	
	
	
}
