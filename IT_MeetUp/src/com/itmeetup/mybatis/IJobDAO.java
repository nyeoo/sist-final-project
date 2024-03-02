package com.itmeetup.mybatis;

import java.util.ArrayList;

public interface IJobDAO
{	
	// 해당 프로젝트 희망 직무 뽑기
	public ArrayList<String> jobList(String code);
}
