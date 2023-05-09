package com.wohaha.dodamdodam.service;

import com.wohaha.dodamdodam.domain.Medicine;
import com.wohaha.dodamdodam.dto.request.*;
import com.wohaha.dodamdodam.dto.response.MedicineClassResponseDto;
import com.wohaha.dodamdodam.dto.response.MedicineKidResponseDto;

import java.util.List;

public interface MedicineService {


    //투약의뢰서 작성
    boolean createMedicine(CreateMedicineRequestDto createMedicineRequestDto);

    boolean completeMedicine(CompleteMedicineRequestDto completeMedicineRequestDto);

    Medicine getMedicine(Long medicineSeq);

    List<MedicineClassResponseDto> getMedicineByClass(Long classSeq, MedicineRequestDto medicineRequestDto);

    List<MedicineKidResponseDto> getMedicineByKid(Long kidSeq, MedicineRequestDto medicineRequestDto);


}
