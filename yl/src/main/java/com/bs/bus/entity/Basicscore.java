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
 * @since 2020-04-25
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("bus_basicscore")
public class Basicscore implements Serializable {

    private static final long serialVersionUID=1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    private String userid;

    private String username;

    private Integer deptid;

    private String deptname;

    private Integer pdeptid;

    private String pdeptname;

    private Float avascore;

    private Float avastuscore;

    private Float addscore;

    private Float paddscore;

    /**
     * 有或无
     */
    private String qualify;

    private Integer rank;


}
