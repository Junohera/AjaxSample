package com.juno.ajax;

import lombok.Builder;
import lombok.Data;

import java.util.Date;

@Data
@Builder
public class TestDTO {
    private String type;
    private String name;
    private Date now;
}
