package com.itmeetup.mybatis;

import java.util.ArrayList;

public interface IReportListDAO {
    ArrayList<ReportListDTO> reportList();
    ArrayList<ReportListDTO> reportOutputList();
    ArrayList<ReportListDTO> reportPersonList();
}

