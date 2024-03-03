package com.itmeetup.mybatis;

import java.util.ArrayList;

public interface ICommentDAO
{	
	// 해당 프로젝트 댓글 출력
	public ArrayList<CommentDTO> commentList(String code);
	
	// 해당 댓글에 대한 대댓글
	public ArrayList<CommentDTO> recommentList(String number);
	
	// 해당 프로젝트 댓글 개수
	public String countComment(String code);
}
