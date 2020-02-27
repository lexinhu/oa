﻿<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.xn2001.oa.global.Contant" %>
        <jsp:include page="top.jsp"/>
<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 处理报销单 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel heading-border">
                <div class="panel-body bg-light">
                    <div class="section-divider mt20 mb40">
                        <span> 基本信息 </span>
                    </div>
                    <div class="section row">
                        <div class="col-md-2">事由</div>
                        <div class="col-md-6">${claimVoucher.cause}</div>
                    </div>
                    <div class="section row">
                        <div class="col-md-2">创建人</div>
                        <div class="col-md-4">${claimVoucher.creater.name}</div>
                        <div class="col-md-2">创建时间</div>
                        <div class="col-md-4"><spring:eval expression="claimVoucher.createTime"/></div>
                    </div>
                    <div class="section row">
                        <div class="col-md-2">待处理人</div>
                        <div class="col-md-4">${claimVoucher.cause}</div>
                        <div class="col-md-2">状态</div>
                        <div class="col-md-4">${claimVoucher.status}</div>
                    </div>
                    <div class="section-divider mt20 mb40">
                        <span> 费用明细 </span>
                    </div>
                    <C:forEach items="${items}" var="item">
                        <div class="section row">
                            <div class="col-md-3">${item.item}</div>
                            <div class="col-md-4">费用：${item.amount}</div>
                            <div class="col-md-4">备注：${item.comment}</div>
                        </div>
                    </C:forEach>
                    <div class="section-divider mt20 mb40"></div>
                    <div class="section row">
                        <div class="col-md-2">总金额</div>
                        <div class="col-md-6">${claimVoucher.totalAmount}</div>
                    </div>
                    <div class="section-divider mt20 mb40">
                        <span> 处理流程 </span>
                    </div>
                    <div class="section row">
                        <c:forEach items="${records}" var="record">
                            <div class="col-md-1">${record.dealer.name}</div>
                            <div class="col-md-3"><spring:eval expression="record.dealTime"/></div>
                            <div class="col-md-1">${record.dealWay}</div>
                            <div class="col-md-2">${record.dealWay}</div>
                            <div class="col-md-5">备注：${record.comment}</div>
                        </c:forEach>
                    </div>
                    <form:form id="admin-form" name="addForm" action="/claim_voucher/check" modelAttribute="record">
                        <form:hidden path="claimVoucherId" />
                        <div class="panel-body bg-light">
                            <div class="section">
                                <label for="comment" class="field prepend-icon">
                                    <form:input path="comment" cssClass="gui-input" placeholder="备注..." />
                                    <label for="comment" class="field-icon">
                                        <i class="fa fa-lock"></i>
                                    </label>
                                </label>
                            </div>
                            <div class="panel-footer text-right">
                                <C:if test="${sessionScope.employee.post==Contant.POST_FM || sessionScope.employee.post==Contant.POST_GM}">
                                    <button type="sumbit" name="dealWay" class="button" value="${Contant.DEAL_PASS}"> ${Contant.DEAL_PASS}</button>
                                    <button type="sumbit" name="dealWay" class="button" value="${Contant.DEAL_BACK}"> ${Contant.DEAL_BACK}</button>
                                    <button type="sumbit" name="dealWay" class="button" value="${Contant.DEAL_REJECT}"> ${Contant.DEAL_REJECT}</button>
                                </C:if>
                                <C:if test="${sessionScope.employee.post==Contant.POST_TREASURER}">
                                    <button type="sumbit" name="dealWay" class="button" value="${Contant.DEAL_PAID}"> ${Contant.DEAL_PAID}</button>
                                </C:if>
                                <button type="button" class="button" onclick="javascript:window.history.go(-1);"> 返回 </button>
                            </div>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</section>
<jsp:include page="bottom.jsp"/>

