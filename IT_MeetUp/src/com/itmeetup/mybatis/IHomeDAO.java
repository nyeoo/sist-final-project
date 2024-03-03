package com.itmeetup.mybatis;

import java.util.ArrayList;

public interface IHomeDAO
{
	public ArrayList<OpenProjectDTO> popList();
	public ArrayList<OpenProjectDTO> newList();
	public ArrayList<String> skills(String code);
	public ArrayList<JobDTO> jobs(String code);
	
}
