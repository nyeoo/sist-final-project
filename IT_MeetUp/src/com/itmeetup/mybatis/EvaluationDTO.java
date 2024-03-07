package com.itmeetup.mybatis;

public class EvaluationDTO
{
	private int evano, quePoint;									// 평가번호, 벌점
	private String erpcCode, evapcCode, quename, opcode;			// 피평가자, 평가자, 평가명, 개설코드
	
	// getter / setter 구성
	
	public String getOpcode()
	{
		return opcode;
	}
	public void setOpcode(String opcode)
	{
		this.opcode = opcode;
	}
	public int getEvano()
	{
		return evano;
	}
	public void setEvano(int evano)
	{
		this.evano = evano;
	}
	public int getQuePoint()
	{
		return quePoint;
	}
	public void setQuePoint(int quePoint)
	{
		this.quePoint = quePoint;
	}
	public String getErpcCode()
	{
		return erpcCode;
	}
	public void setErpcCode(String erpcCode)
	{
		this.erpcCode = erpcCode;
	}
	public String getEvapcCode()
	{
		return evapcCode;
	}
	public void setEvapcCode(String evapcCode)
	{
		this.evapcCode = evapcCode;
	}
	public String getQuename()
	{
		return quename;
	}
	public void setQuename(String quename)
	{
		this.quename = quename;
	}
	
	
}
