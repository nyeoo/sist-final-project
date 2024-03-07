package com.itmeetup.mybatis;

import java.util.ArrayList;

public interface IHomeDAO
{
	//TODO [ROWNUM 추가해서 조건절에 12개 까지 SELECT 하는걸로 수정하기]
	//TODO [로그인 했을 때 찜한 상태인지 아닌지 구분하는 쿼리문으로 수정]
	public ArrayList<OpenProjectDTO> popList();
	public ArrayList<OpenProjectDTO> newList();
	public ArrayList<String> skills(String code);
	public ArrayList<JobDTO> jobs(String code);
	
}
