package com.itmeetup.mybatis;

import java.util.List;

public class EvaluationDTO
{
	private int evano, quePoint, evaqueno;									// 평가번호, 벌점, 평가질문번호
	
	private String erpcCode, evapcCode, quename, memCode, pinickname, lederPcCode;		// 피평가자, 평가자, 평가명, 회원코드, 방장 pc코드
	
	private List<String> evalQue1;											// 첫번째 질문
	private List<String> evalQue2;											// 두번째 질문
	private List<String> evalQue3;											// 세번째 질문
	private List<String> evalQue4;											// 네번째 질문
	private List<String> grLeader;											// 다섯째 질문(팀장)
	
	// getter / setter 구성
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
	public int getEvaqueno()
	{
		return evaqueno;
	}
	public void setEvaqueno(int evaqueno)
	{
		this.evaqueno = evaqueno;
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
	public String getMemCode()
	{
		return memCode;
	}
	public void setMemCode(String memCode)
	{
		this.memCode = memCode;
	}
	public String getPinickname()
	{
		return pinickname;
	}
	public void setPinickname(String pinickname)
	{
		this.pinickname = pinickname;
	}
	public String getLederPcCode()
	{
		return lederPcCode;
	}
	public void setLederPcCode(String lederPcCode)
	{
		this.lederPcCode = lederPcCode;
	}
	public List<String> getEvalQue1()
	{
		return evalQue1;
	}
	public void setEvalQue1(List<String> evalQue1)
	{
		this.evalQue1 = evalQue1;
	}
	public List<String> getEvalQue2()
	{
		return evalQue2;
	}
	public void setEvalQue2(List<String> evalQue2)
	{
		this.evalQue2 = evalQue2;
	}
	public List<String> getEvalQue3()
	{
		return evalQue3;
	}
	public void setEvalQue3(List<String> evalQue3)
	{
		this.evalQue3 = evalQue3;
	}
	public List<String> getEvalQue4()
	{
		return evalQue4;
	}
	public void setEvalQue4(List<String> evalQue4)
	{
		this.evalQue4 = evalQue4;
	}
	public List<String> getGrLeader()
	{
		return grLeader;
	}
	public void setGrLeader(List<String> grLeader)
	{
		this.grLeader = grLeader;
	}
	

	

	
}
