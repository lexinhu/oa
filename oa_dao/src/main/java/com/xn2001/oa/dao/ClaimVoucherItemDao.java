package com.xn2001.oa.dao;

import com.xn2001.oa.entity.ClaimVoucherItem;

import java.util.List;

/**
 * Created by 乐心湖 on 2020/2/23 23:56
 */
public interface ClaimVoucherItemDao {
    void insert(ClaimVoucherItem claimVoucherItem);
    void update(ClaimVoucherItem claimVoucherItem);
    void delete(int id);
    List<ClaimVoucherItem> selectByClaimVoucher(int cvid);
}
