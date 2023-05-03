package com.wohaha.dodamdodam.dto.response.request;

import lombok.*;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import java.util.Date;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class CreateKidRequestDto {

    private String kidName;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date birth;

    private MultipartFile photo;

    private String gender;

    private Long classSeq;

}
