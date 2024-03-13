package com.itmeetup.mybatis;

import java.util.ArrayList;

public interface IReportListDAO
{
	public ArrayList<ReportListDTO> reportList(String opCode);
    public ArrayList<ReportListDTO> reportOutputList(String opCode);
    public ArrayList<ReportListDTO> reportPersonList(String opCode);
    public int insertReport(ReportListDTO dto);
    
}

