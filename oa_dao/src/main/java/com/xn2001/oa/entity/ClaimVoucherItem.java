package com.xn2001.oa.entity;

import lombok.Data;

/**
 * (ClaimVoucherItem)表实体类
 *
 * @author 乐心湖
 * @since 2020-02-20 00:53:33
 */
@Data
public class ClaimVoucherItem {

    private Integer id;

    private Integer claimVoucherId;

    private String item;

    private Double amount;

    private String comment;

}