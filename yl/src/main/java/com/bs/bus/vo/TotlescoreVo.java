package com.bs.bus.vo;

import com.bs.bus.entity.Totlescore;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class TotlescoreVo extends Totlescore {

    private Integer page=1;

    private Integer limit=10;

    //接受多个ID
    private Integer[] ids;

    private String grade;

    private Float rate;
}
