/*======================
 	IndictDTO.java
======================*/

package com.itmeetup.mybatis;

public class IndictDTO
{
	private int idtNo;		// 신고번호
	private String idtDate, idtReason, idtProcess, indicted, idtProcessDate;	// 신고 일자, 신고 사유, 처리결과, 처리자, 처리일자
	
	
	// getter / setter
	public int getIdtNo()
	{
		return idtNo;
	}
	public void setIdtNo(int idtNo)
	{
		this.idtNo = idtNo;
	}
	public String getIdtDate()
	{
		return idtDate;
	}
	public void setIdtDate(String idtDate)
	{
		this.idtDate = idtDate;
	}
	public String getIdtReason()
	{
		return idtReason;
	}
	public void setIdtReason(String idtReason)
	{
		this.idtReason = idtReason;
	}
	public String getIdtProcess()
	{
		return idtProcess;
	}
	public void setIdtProcess(String idtProcess)
	{
		this.idtProcess = idtProcess;
	}
	public String getIndicted()
	{
		return indicted;
	}
	public void setIndicted(String indicted)
	{
		this.indicted = indicted;
	}
	public String getIdtProcessDate()
	{
		return idtProcessDate;
	}
	public void setIdtProcessDate(String idtProcessDate)
	{
		this.idtProcessDate = idtProcessDate;
	}
	
	
					
}
