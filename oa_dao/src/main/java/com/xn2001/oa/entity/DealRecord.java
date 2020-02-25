package com.xn2001.oa.entity;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * (DealRecord)表实体类
 *
 * @author 乐心湖
 * @since 2020-02-20 00:54:11
 */
@Data
public class DealRecord {
    
    private Integer id;
    
    private Integer claimVoucherId;
    
    private String dealSn;

    @DateTimeFormat(pattern = "yyyy-MM-dd hh:mm")
    private Date dealTime;
    
    private String dealWay;
    
    private String dealResult;
    
    private String comment;

    private Employee dealer;

}