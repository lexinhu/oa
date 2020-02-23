package com.xn2001.oa.dao;

import com.xn2001.oa.entity.DealRecord;

import java.util.List;

/**
 * Created by 乐心湖 on 2020/2/24 0:00
 */
public interface DealRecordDao {
    void insert(DealRecord dealRecord);
    List<DealRecord> selectByClaimVoucher(int cvid);
}
