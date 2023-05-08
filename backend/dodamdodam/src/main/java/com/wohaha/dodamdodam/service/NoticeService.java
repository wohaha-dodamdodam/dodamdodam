package com.wohaha.dodamdodam.service;

import com.wohaha.dodamdodam.dto.request.CreateNoticeRequestDto;
import com.wohaha.dodamdodam.dto.response.ClassNoticeResponseDto;
import com.wohaha.dodamdodam.dto.response.KidListResponseDto;

import java.util.List;

public interface NoticeService {
    //알림장 등록  - 내용
    long createNotice(CreateNoticeRequestDto createNoticeRequestDto);
    //알림장 등록 - 사진 & 아이
    boolean createNoticeKidAndPhoto(long noticeSeq, List<Long> kids, List<String> uploadUrls);
    //알림장 리스트
    List<ClassNoticeResponseDto> noticeList(long classSeq);
    //알림장 1개 정보
    ClassNoticeResponseDto noticeInfo(long noticeSeq);
}