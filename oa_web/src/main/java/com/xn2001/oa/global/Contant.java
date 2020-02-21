package com.xn2001.oa.global;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by 乐心湖 on 2020/2/19 2:30
 */
public class Contant {

    //职务
    public static final String POST_STAFF = "员工";
    public static final String POST_FM = "部门经理";
    public static final String POST_GM = "总经理";
    public static final String POST_TREASURER = "财务";

    public static List<String> getPosts() {
        List<String> list = new ArrayList<>();
        list.add(POST_STAFF);
        list.add(POST_FM);
        list.add(POST_GM);
        list.add(POST_TREASURER);
        return list;
    }

    /**
     *  费用类别
     */
    public List<String> getItems() {
        List<String> list = new ArrayList<>();
        list.add("交通");
        list.add("餐饮");
        list.add("住宿");
        list.add("办公");
        return list;
    }

    //报销单状态
    public static final String VOUCHER_CREATED="新创建";
    public static final String VOUCHER_SUBMIT="已提交";
    public static final String VOUCHER_APPROVED="已审核";
    public static final String VOUCHER_BACK="已打回";
    public static final String VOUCHER_END="已终止";
    public static final String VOUCHER_RECHECK="待复查";
    public static final String VOUCHER_PAID="已支付";

    //审核额度
    public static final double LIMIT_CHECK=5000.00;

    //处理方式
    public static final String DEAL_CREATED="创建";
    public static final String DEAL_SUBMIT="提交";
    public static final String DEAL_UPDATE="修改";
    public static final String DEAL_BACK="打回";
    public static final String DEAL_REJECT="拒绝";
    public static final String DEAL_PASS="通过";
    public static final String DEAL_PAID="支付";

}
