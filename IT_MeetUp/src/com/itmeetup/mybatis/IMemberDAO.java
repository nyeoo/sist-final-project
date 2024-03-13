package com.itmeetup.mybatis;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface IMemberDAO
{
	// 로그인
	public MemberDTO getMember(@Param("piId") String piId, @Param("piPw") String piPw);	// 일반회원 로그인 조회
	public MemberDTO getAdmin(@Param("piId") String piId, @Param("piPw") String piPw); // 관리자 로그인 조회
	// 비밀번호 찾기
	//public int checkMail(String piEmail);						// 이메일 존재여부 체크
	
	// 회원가입
	public ArrayList<JobDTO> jobs();						// 직업 select
	public ArrayList<MeetDTO> meets();						// 모임방식 select
	public ArrayList<SkillCategoryDTO> skillCategorys();	// 스킬카테고리 select
	public ArrayList<SkillDTO> skills();					// 스킬 상세
	public Integer addMember(MemberDTO member);				// 회원 insert
	public int checkId(String piId);						// 아이디 중복 체크
	public int checkPw(@Param("piMemCode") String piMemCode, @Param("piPw") String piPw);		// 수정 비밀번호 체크
	public int checkNickname(String piNickname);			// 닉네임 중복 체크
	public int addSkill(@Param("hopeskills") List<String> hopeskills);			// 스킬 insert
	public int addCareer(@Param("careerList") List<CareerDTO> careerList);	// 경력 insert
	
}
