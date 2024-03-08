package com.itmeetup.mybatis;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

public interface ICompleteProjectDAO
{
	public ArrayList<CompleteProjectDTO> cpList(@Param("start") int start, @Param("end") int end, @Param("category") String category);
	public int getDataCount(@Param("category") String category);
	
	public ArrayList<CategoryDTO> catList();
}
