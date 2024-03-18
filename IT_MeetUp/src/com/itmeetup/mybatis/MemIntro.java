package com.itmeetup.mybatis;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class MemIntro
{
	public String memberList(ArrayList<CompleteMemDTO> cm)
	{
		StringBuffer members = new StringBuffer();
		
		members.append("<ul class=\"d-flex job-list\">");
		
		Map<String, String> mapping = new HashMap<>();
		
        // 매핑 정보 추가
        mapping.put("JOB_1", "기획");
        mapping.put("JOB_2", "디자인");
        mapping.put("JOB_3", "프론트");
        mapping.put("JOB_4", "백");
		
        for (int i = 1; i <= mapping.size(); i++)
		{
			if (containsCode(cm, "JOB_"+i))
			{
				members.append("<li class=\"d-flex job\"><span class=\"tag bg-success job-tag\">" + mapping.get("JOB_"+i) + "</span>"
						+ "<div class=\"d-flex member-box\">");
						
				for (CompleteMemDTO dto : cm)
				{
					if (dto.getJobCode().equals("JOB_"+i))
					{
						members.append("<div class=\"d-flex member\">");
						
						// 프로필 사진
						if(dto.getEvaStatus().equals("N"))
						{
							members.append("<i class=\"fa-solid fa-circle-user no-profile-lg no-eva\"></i>");
						}
						else if(dto.getProImg()==null)
						{
							members.append("<i class=\"fa-solid fa-circle-user no-profile-lg\"></i>");
						}
						else
						{
							members.append("<img src=\"<%=cp%>/"+ dto.getProImg() +"\" class=\"member-img\" />");
						}

						// 닉네임
						if (dto.getEvaStatus().equals("N"))
						{
							members.append("<span class=\"nickname\">미평가팀원</span><input type=\"hidden\" id=\"memCode\" value=\"\">");
						}
						else
						{
							members.append("<span class=\"nickname\">" + dto.getNickname() +"</span><input type=\"hidden\" id=\"memCode\" value=\""+ dto.getMemCode() +"\">");
						}
						
						members.append("</div>");
					}
				}
				members.append("</div></li>");
				
			}
		}
        members.append("</ul>");
		return members.toString();
	}
	public static boolean containsCode(ArrayList<CompleteMemDTO> list, String code) {
        for (CompleteMemDTO dto : list) {
            if (dto.getJobCode().equals(code)) {
                return true;
            }
        }
        return false;
    }
}
