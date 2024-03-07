package com.itmeetup.mybatis;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface ICompleteProjectDAO
{
	public ArrayList<CompleteProjectDTO> cpList(@Param("start") int start, @Param("end") int end);
	public int getDataCount();
	
	public ArrayList<CategoryDTO> catList();
}
