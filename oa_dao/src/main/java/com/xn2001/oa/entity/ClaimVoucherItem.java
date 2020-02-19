package com.xn2001.oa.entity;

/**
 * (ClaimVoucherItem)表实体类
 *
 * @author 乐心湖
 * @since 2020-02-20 00:53:33
 */
public class ClaimVoucherItem {
    
    private Integer id;
    
    private Integer claimVoucherId;
    
    private String item;
    
    private Object amount;
    
    private String comment;

    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
    
    public Integer getClaimVoucherId() {
        return claimVoucherId;
    }

    public void setClaimVoucherId(Integer claimVoucherId) {
        this.claimVoucherId = claimVoucherId;
    }
    
    public String getItem() {
        return item;
    }

    public void setItem(String item) {
        this.item = item;
    }
    
    public Object getAmount() {
        return amount;
    }

    public void setAmount(Object amount) {
        this.amount = amount;
    }
    
    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }
}