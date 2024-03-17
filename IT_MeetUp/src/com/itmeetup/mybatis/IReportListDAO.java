package com.itmeetup.mybatis;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

public interface IReportListDAO
{
	public ArrayList<ReportListDTO> reportList(@Param("opCode") String opCode, @Param("start") int start, @Param("end") int end);
    public ArrayList<ReportListDTO> reportOutputList(String opCode);
    public ArrayList<ReportListDTO> reportPersonList(String opCode);
    public int insertReport(ReportListDTO dto);
    public int insertActualTech(ReportListDTO dto);
    public int searchRepNo(String opCode);
    public int insertApproval(ReportListDTO dto);
    public int removeReport(ReportListDTO dto);
    public int removeActualTech(ReportListDTO dto);
    public int countReportList(String opCode);
}

