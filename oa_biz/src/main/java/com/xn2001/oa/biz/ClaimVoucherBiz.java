package com.xn2001.oa.biz;

import com.xn2001.oa.entity.ClaimVoucher;
import com.xn2001.oa.entity.ClaimVoucherItem;
import com.xn2001.oa.entity.DealRecord;

import java.util.List;

/**
 * Created by 乐心湖 on 2020/2/24 22:57
 */
public interface ClaimVoucherBiz {

    void save(ClaimVoucher claimVoucher, List<ClaimVoucherItem> items);
    ClaimVoucher get(int id);
    List<ClaimVoucherItem> getItems(int cvid);
    List<DealRecord> getRecords(int cvid);

    List<ClaimVoucher> getForSelf(String sn);
    List<ClaimVoucher> getForDeal(String sn);

    void update(ClaimVoucher claimVoucher,List<ClaimVoucherItem> items);
    void submit(int id);
    void deal(DealRecord dealRecord);
}
