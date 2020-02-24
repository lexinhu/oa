package com.xn2001.oa.dao;

import com.xn2001.oa.entity.DealRecord;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 乐心湖 on 2020/2/24 0:00
 */
@Repository
public interface DealRecordDao {
    void insert(DealRecord dealRecord);
    List<DealRecord> selectByClaimVoucher(int cvid);
}
