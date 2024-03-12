package com.itmeetup.mybatis;

import java.util.ArrayList;
import java.util.List;

public class EvaluationDTO
{
	private int evano, quePoint, evaqueno;									// 평가번호, 벌점, 평가질문번호
	
	private String erpcCode, evapcCode, quename, memCode, pinickname;		// 피평가자, 평가자, 평가명, 회원코드
	
	private List<String> evalQue;											// 첫번째 질문
	private ArrayList<String> que1;											// 첫번째 질문
	private ArrayList<String> que2;											// 두번째 질문
	private ArrayList<String> que3;											// 세번째 질문
	private ArrayList<String> que4;											// 네번째 질문
	
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
	public List<String> getEvalQue()
	{
		return evalQue;
	}
	public void setEvalQue(List<String> evalQue)
	{
		this.evalQue = evalQue;
	}
	public ArrayList<String> getQue1()
	{
		return que1;
	}
	public void setQue1(ArrayList<String> que1)
	{
		this.que1 = que1;
	}
	public ArrayList<String> getQue2()
	{
		return que2;
	}
	public void setQue2(ArrayList<String> que2)
	{
		this.que2 = que2;
	}
	public ArrayList<String> getQue3()
	{
		return que3;
	}
	public void setQue3(ArrayList<String> que3)
	{
		this.que3 = que3;
	}
	public ArrayList<String> getQue4()
	{
		return que4;
	}
	public void setQue4(ArrayList<String> que4)
	{
		this.que4 = que4;
	}
	

	
	
	
}
