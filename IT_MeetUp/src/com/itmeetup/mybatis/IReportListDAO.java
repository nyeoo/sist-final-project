package com.itmeetup.mybatis;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

public interface IReportListDAO
{
	public ArrayList<ReportListDTO> reportList(String opCode);
    public ArrayList<ReportListDTO> reportOutputList(String opCode);
    public ArrayList<ReportListDTO> reportPersonList(String opCode);
    public int insertReport(ReportListDTO dto);
    public int insertActualTech(ReportListDTO dto);
    public int searchRepNo(String opCode);
    
}

