package com.example.todolist.web.utils;

import com.example.todolist.domain.work.Work;
import com.example.todolist.web.dto.RequestMoveWorkDto;

public class TimelineDescription {
    public static String makeTimelineDescription(Work work, String method) {
        String description = "";
        description += getStatus(work.getStatus()) + "에 ";
        description += getComleteWordByJongsung(work.getTitle(), "을", "를");

        switch(method) {
            case "save" :
                return description + " 등록하였습니다.";
            case "update" :
                return description + " 수정하였습니다.";
            case "delete" :
                return description + " 삭제하였습니다.";
            default :
                return "";
        }
    }

    public static String moveDescription(Work work, RequestMoveWorkDto workDto) {
        String description = "";
        description += getComleteWordByJongsung(work.getTitle(), "을", "를");
        description += " " + getStatus(work.getStatus()) + "에서 ";
        description += getStatus(workDto.toEntity().getStatus()) + "로 이동하였습니다.";
        return description;
    }

    public static String getStatus(int status) {
        switch(status) {
            case 1 :
                return  "해야할 일";
            case 2 :
                return "하고 있는 일";
            case 3 :
                return  "완료한 일";
            default :
                return "";
        }
    }

    public static final String getComleteWordByJongsung(String title, String firstValue, String secondValue) {
        char lastTitle = title.charAt(title.length() - 1);
        //한글의 제일 처음과 끝의 범위밖일 경우는 오류
        if (lastTitle < 0xAC00 || lastTitle > 0xD7A3) {
           return title;
        }
        String seletedValue = (lastTitle - 0xAC00) % 28 > 0 ? firstValue : secondValue;

        return title + seletedValue;
    }


}
