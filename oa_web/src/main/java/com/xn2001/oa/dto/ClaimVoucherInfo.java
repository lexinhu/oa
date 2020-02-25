package com.xn2001.oa.dto;

import com.xn2001.oa.entity.ClaimVoucher;
import com.xn2001.oa.entity.ClaimVoucherItem;
import lombok.Data;

import java.util.List;

/**
 * Created by 乐心湖 on 2020/2/24 23:53
 */
@Data
public class ClaimVoucherInfo {

    private ClaimVoucher claimVoucher;
    private List<ClaimVoucherItem> items;

}
