package com.wohaha.dodamdodam.repository;

import com.wohaha.dodamdodam.dto.request.FoodRequestDto;
import com.wohaha.dodamdodam.dto.response.FoodResponseDto;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

public interface ClassTeacherRepositoryCustom {

    boolean isExist(Long classSeq, Long userSeq);

}
