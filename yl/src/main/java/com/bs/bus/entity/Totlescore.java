package com.bs.bus.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author yl
 * @since 2020-04-27
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("bus_totlescore")
public class Totlescore implements Serializable {

    private static final long serialVersionUID=1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    private String userid;

    private String username;

    private Integer deptid;

    private String deptname;

    private Float m21;

    private Float m22;

    private Float m12;

    private Float m11;

    private String year;

    private Float totlescore;

    private Integer rank;

    private String opername;

    private Float m31;

    private Float m32;

    private Integer addrank;

    private Float addava;

    private Integer basicrank;

    private Float basicesocre;


}
