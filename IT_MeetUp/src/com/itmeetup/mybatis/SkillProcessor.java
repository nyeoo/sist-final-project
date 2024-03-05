package com.itmeetup.mybatis;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class SkillProcessor {
    
    private static final Map<String, String> SKILL_MAPPING = createSkillMapping();
    
    // 스킬코드와 스킬을 나타내는 아이콘(이미지) 이름을 매핑해주는 메소드
    static Map<String, String> createSkillMapping() {
        Map<String, String> mapping = new HashMap<>();
        // 매핑 정보 추가
        mapping.put("SK_1", "ico_html5_01");
        mapping.put("SK_2", "ico_css_01");
        mapping.put("SK_3", "ico_Javascript_01");
        mapping.put("SK_4", "ico_TypeScript");
        mapping.put("SK_5", "ico_React");
        mapping.put("SK_6", "ico_Vue");
        mapping.put("SK_7", "ico_Svelte");
        mapping.put("SK_8", "ico_Nextjs");
        mapping.put("SK_9", "ico_ruby");
        mapping.put("SK_10", "ico_Java_01");
        mapping.put("SK_11", "ico_jsp");
        mapping.put("SK_12", "ico_python");
        mapping.put("SK_13", "ico_C_plus");
        mapping.put("SK_14", "ico_C_sharp");
        mapping.put("SK_15", "ico_R");
        mapping.put("SK_16", "ico_Oracle");
        mapping.put("SK_17", "ico_MySQL");
        mapping.put("SK_18", "ico_PHP");
        mapping.put("SK_19", "ico_Nodejs");
        mapping.put("SK_20", "ico_Spring");
        mapping.put("SK_21", "ico_Jquery");
        mapping.put("SK_22", "ico_Mybatis");
        mapping.put("SK_23", "ico_Spring_Boot");
        mapping.put("SK_24", "ico_Rust");
        mapping.put("SK_25", "ico_scala");
        mapping.put("SK_26", "ico_Kotlin");
        mapping.put("SK_27", "ico_unity");
        mapping.put("SK_28", "ico_powerMockup");
        mapping.put("SK_29", "ico_protoNow");
        mapping.put("SK_30", "ico_oven_01");
        mapping.put("SK_31", "ico_Sketch");
        mapping.put("SK_32", "ico_zeplin");
        mapping.put("SK_33", "ico_Figma");
        mapping.put("SK_34", "ico_Axure_RP");
        mapping.put("SK_35", "ico_Adobe_XD");
        mapping.put("SK_36", "ico_Visual_Studio_Code");
        mapping.put("SK_37", "ico_Visual_Studio");
        mapping.put("SK_38", "ico_IntelliJ");
        mapping.put("SK_39", "ico_Notepad");
        mapping.put("SK_40", "ico_Vim");
        mapping.put("SK_41", "ico_Android_Studio");
        mapping.put("SK_42", "ico_PyCharm");
        mapping.put("SK_43", "ico_Eclipse");
        mapping.put("SK_44", "ico_Xcode");
        
       
        return mapping;
    }
    
    // 스킬코드를 받아서 매핑정보에 따라 변환해주는 메소드
    public static ArrayList<String> processSkills(ArrayList<String> originalSkills) {
        ArrayList<String> processedSkills = new ArrayList<>();
        for (String skill : originalSkills) {
        	
            // 매핑 정보가 있으면 변환하고, 없으면 그대로(스킬코드) 반환
            String mappedSkill = SKILL_MAPPING.getOrDefault(skill, skill);
            processedSkills.add(mappedSkill);
        }
        return processedSkills;
    }
}
