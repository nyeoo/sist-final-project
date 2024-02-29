/*======================
 	IndictDTO.java
======================*/

package com.itmeetup.mybatis;

public class IndictDTO
{
	private int idtNo, idtNum, demeritNum, sendNum;		// 신고번호, 사용자에게 보여질 번호, 벌점, 업데이트할 번호(받은 번호)
	private String idtDate, idtReason, idtProcess, indicted, idtProcessDate;	// 신고 일자, 신고 사유, 신고 결과 코드, 관리자번호, 처리일자


	
	// getter / setter
	public int getIdtNo()
	{
		return idtNo;
	}
	public void setIdtNo(int idtNo)
	{
		this.idtNo = idtNo;
	}
	public int getIdtNum()
	{
		return idtNum;
	}
	public void setIdtNum(int idtNum)
	{
		this.idtNum = idtNum;
	}
	public int getDemeritNum()
	{
		return demeritNum;
	}
	public void setDemeritNum(int demeritNum)
	{
		this.demeritNum = demeritNum;
	}
	public int getSendNum()
	{
		return sendNum;
	}
	public void setSendNum(int sendNum)
	{
		this.sendNum = sendNum;
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
