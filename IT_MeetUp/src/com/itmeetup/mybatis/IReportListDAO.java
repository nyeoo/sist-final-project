package com.itmeetup.mybatis;

import java.util.ArrayList;

public interface IReportListDAO {
    ArrayList<ReportListDTO> reportList(String opCode);
    ArrayList<ReportListDTO> reportOutputList(String opCode);
    ArrayList<ReportListDTO> reportPersonList(String opCode);
}

