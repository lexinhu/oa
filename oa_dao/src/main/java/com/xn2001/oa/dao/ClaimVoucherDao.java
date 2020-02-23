package com.xn2001.oa.dao;

import com.xn2001.oa.entity.ClaimVoucher;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 乐心湖 on 2020/2/23 22:49
 */
@Repository
public interface ClaimVoucherDao {

    void insert(ClaimVoucher claimVoucher);
    void update(ClaimVoucher claimVoucher);
    void delete(int id);
    ClaimVoucher select(int id);
    List<ClaimVoucher> selectByCreateSn(String csn);
    List<ClaimVoucher> selectByNextDealSn(String ndsn);

}
