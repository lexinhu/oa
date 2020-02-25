package com.xn2001.oa.entity;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * (ClaimVoucher)表实体类
 *
 * @author 乐心湖
 * @since 2020-02-20 00:53:40
 */
@Data
public class ClaimVoucher {

    private Integer id;

    private String cause;

    private String createSn;

    @DateTimeFormat(pattern = "yyyy-MM-dd hh:mm")
    private Date createTime;

    private String nextDealSn;

    private Object totalAmount;

    private String status;

    private Employee creater;

    private Employee dealer;

}