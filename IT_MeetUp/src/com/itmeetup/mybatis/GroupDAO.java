package com.itmeetup.mybatis;

import java.util.ArrayList;

public class GroupDAO
{
	public ArrayList<E> GroupSampleList()
	{
		String sql = "SELECT OP_CODE \"개설코드\", PI_ID \"아이디\", PI_NAME \"이름\", OP_END_DATE \"종료 예정일\", PC_CODE \"참여확인코드\"\r\n" + 
				"FROM PERSONAL_INFO PI\r\n" + 
				"LEFT JOIN MEMBER M ON PI.PI_MEM_CODE = M.MEM_CODE\r\n" + 
				"LEFT JOIN PART_APPLICANT PA ON M.MEM_CODE = PA.PA_MEM_CODE\r\n" + 
				"LEFT JOIN PART_CHECK PC ON PA.PA_NO = PC.PC_PA_NO\r\n" + 
				"LEFT JOIN TEAM_JOB TJ ON PA.PA_TJ_NO = TJ.TJ_NO\r\n" + 
				"LEFT JOIN OPEN_PROJECT OP ON TJ.TJ_OP_CODE = OP.OP_CODE\r\n" + 
				"LEFT JOIN LEAVE L ON L.LEA_PC_CODE = PC.PC_CODE\r\n" + 
				"LEFT JOIN PROJECT_STOP PS ON PS.PS_LEA_NO = L.LEA_NO\r\n" + 
				"WHERE OP_CODE NOT IN (\r\n" + 
				"    SELECT DISTINCT TJ2.TJ_OP_CODE\r\n" + 
				"    FROM TEAM_JOB TJ2\r\n" + 
				"    JOIN PART_APPLICANT PA2 ON TJ2.TJ_NO = PA2.PA_TJ_NO\r\n" + 
				"    JOIN PART_CHECK PC2 ON PA2.PA_NO = PC2.PC_PA_NO\r\n" + 
				"    WHERE PC2.PC_WHETHER = 2 AND TJ2.TJ_OP_CODE = OP.OP_CODE\r\n" + 
				") AND OP_END_DATE < SYSDATE AND PA_NO IS NOT NULL AND PC_CODE IS NOT NULL\r\n" + 
				"AND OP_CODE NOT IN (\r\n" + 
				"    \r\n" + 
				"    SELECT DISTINCT TJ2.TJ_OP_CODE\r\n" + 
				"    FROM TEAM_JOB TJ2\r\n" + 
				"    JOIN PART_APPLICANT PA2 ON TJ2.TJ_NO = PA2.PA_TJ_NO\r\n" + 
				"    JOIN PART_CHECK PC2 ON PA2.PA_NO = PC2.PC_PA_NO\r\n" + 
				"    JOIN LEAVE L2 ON L2.LEA_PC_CODE = PC2.PC_CODE\r\n" + 
				"    JOIN PROJECT_STOP PS2 ON PS2.PS_LEA_NO = L2.LEA_NO\r\n" + 
				"    WHERE PS2.PS_NO IS NOT NULL AND TJ2.TJ_OP_CODE = OP.OP_CODE\r\n" + 
				") \r\n" + 
				"ORDER BY OP_CODE";
	}

}
