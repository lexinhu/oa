package com.xn2001.oa.entity;

import lombok.Data;

import java.util.Date;

/**
 * (ClaimVoucherItem)表实体类
 *
 * @author 乐心湖
 * @since 2020-02-20 00:53:40
 */
@Data
public class ClaimVoucher {

    private Integer id;

    private String cause;

    private String createSn;

    private Date createTime;

    private String nextDealSn;

    private Object totalAmount;

    private String status;
}