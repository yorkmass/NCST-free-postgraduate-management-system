package com.bs.bus.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.time.LocalDateTime;
import java.io.Serializable;
import java.util.Date;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;
import org.springframework.format.annotation.DateTimeFormat;

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
@TableName("bus_comprehensive")
public class Comprehensive implements Serializable {

    private static final long serialVersionUID=1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    private String userid;

    private String username;

    private Integer deptid;

    private String deptname;

    private String term;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date submittime;

    private Float compscore;

    private String file;

    private String filetitle;

    private String filecontent;

    private String jstatus;

    private String jname;


}
