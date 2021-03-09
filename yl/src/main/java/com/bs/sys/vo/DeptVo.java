package com.bs.sys.vo;

import com.bs.sys.entity.Dept;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 */
@Data
@EqualsAndHashCode(callSuper = false) //此注解会生成equals(Object other) 和 hashCode()方法。不调用父类的属性
public class DeptVo extends Dept {

    private Integer page=1;
    private Integer limit=10;

}
