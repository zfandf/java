<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>平安陆金所投资项目-平安陆金所</title>
    <meta name="keywords" content="投资项目，平安陆金所投资项目">
    <meta name="description" content="平安陆金所投资项目，陆金所倾力打造投资服务，稳盈?安e贷，信合鼎晟，为中小企业及个人客户提供专业，可信赖的投融资，信托服务，帮您实现财富稳步增值。">
    <meta name="WT.pn_sku" content="产品列表">
    <meta name="WT.page_name" content="产品列表">
    <link rel="shortcut icon" href="https://static.lufax.com/config/images/favicon.ico">

    <link rel="stylesheet" type="text/css" href="css/main_1018.css">
    <link rel="stylesheet" type="text/css" href="css/layout.css">
    <link rel="stylesheet" type="text/css" href="css/list.css">
    <script src="js/sdc_lufax.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="staticParth/config/js/lib/loadBasicStatic" src="js/loadBasicStatic.js"></script>
    <!--
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="jquery" src="js/jquery-1.7.1.js"></script>
    -->
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="lufaxLib" src="js/lufax.lib.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="trimPath" src="js/template.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="blockUI" src="js/jquery.blockUI.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="base" src="js/base.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="config" src="js/env.config.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="layoutP2p" src="js/layout.p2p.js"></script>
</head>
	
<body>

<input type="hidden" id="userId" name="userId" value="1005178">
<input type="hidden" id="userName" name="userName" value="">
<input type="hidden" id="staticPath" name="staticPath" value="https://static.lufax.com">

<div class="head-wrap head-wrap-list">
<jsp:include page="/getTop.do" flush="true" />
</div>
   




<!--	head	-->
<div class="main-wrap">
    <ul class="breadcrumb">
            <li><a href="HomePage.do">陆金所首页</a> <span class="divider">&gt;</span></li>
        <li class="active">投资项目</li>
</ul>
    <div class="list-product-title clearfix">
        <i class="icon-anyidai">稳盈-安e贷</i>
        <a href="anyidai2intro.htm" target="_blank">了解详情 <span>&gt;</span></a>
    </div>

    <div class="list-wrap clearfix">
        <div class="list-content">
            <div class="list-property">
    <div class="list-property-head">
        <span class="title">请选择</span>
        <b></b>
    </div>
    <form action="InvestMent.do" name="form1">
    <div class="list-property-body">
        <dl class="clearfix list-property-col" id="list-property-minAmount">
            <dt>投资金额</dt>
            <dd>
                <span class="all"><a class="cur" href="InvestMent.do?startAmt=0&endAmt=99999999&startTerm=${startTerm}&endTerm=${endTerm}&current=1">全部</a></span>
                <ul class="selection clearfix">
                    <li><a href="InvestMent.do?startAmt=0&endAmt=1&startTerm=${startTerm}&endTerm=${endTerm}&current=1" >1万元以下 <span class="count-num">(<em>0</em>)</span></a></li>  
                    <li><a href="InvestMent.do?startAmt=1&endAmt=5&startTerm=${startTerm}&endTerm=${endTerm}&current=1" >1万-5万元 <span class="count-num">(<em>0</em>)</span></a></li>
                    <li><a href="InvestMent.do?startAmt=5&endAmt=99999999&startTerm=${startTerm}&endTerm=${endTerm}&current=1">5万元以上 <span class="count-num">(<em>0</em>)</span></a></li>
                </ul>
            </dd>
        </dl>
        <dl class="clearfix list-property-col">
            <dt>投资期限</dt>
            <dd>
                <span class="all"><a class="cur" href="InvestMent.do?startTerm=0&startTerm=60&startAmt=${startAmt}&endAmt=${endAmt}&current=1">全部</a></span>
                <ul class="selection clearfix">
                    <li><a href="InvestMent.do?startTerm=0&endTerm=12&startAmt=${startAmt}&endAmt=${endAmt}&current=1">12个月以下</a></li>
                    <li><a href="InvestMent.do?startTerm=12&endTerm=60&startAmt=${startAmt}&endAmt=${endAmt}&current=1">12个月及以上</a></li>
                </ul>
            </dd>
        </dl>
         <div class="invest-range">
         
            <ul class="clearfix">
         
                <li><span class="input-wrap"><input type="text" class="input" name="startAmt"></span></li>
                <li class="unit">万元</li>
                <li class="dash">-</li>
                <li><span class="input-wrap"><input type="text" class="input" name="endAmt"></span></li>
                <li class="unit">万元</li>
            </ul>
           <input type="submit"   value="确定"/>
        </div> 
    </div>
   </form> 
</div>            <div class="table-title-wrap clearfix">
                <span class="table-title">符合的项目</span>
                <ul class="sort-group clearfix">
                    <li class="first-col"><span class="def" column="currentPrice">当前投资金额</span></li>
                    <li class="last-col"><span class="def" column="investPeriod">投资期限</span></li>
                </ul>
                <span class="sort-txt">排序</span>
            </div>
            <div class="list-table-wrap" id="list-table-wrap">
                             <ul class="list-table" id="list-table">
                 <c:forEach items="${listPage}" var="invest"> 
                                            <li class="clearfix">
                            <div class="product-status">
                                <p class="product-name">
                                    <a href="" target="_blank">${invest.PROD_NAME}</a>
                                                                            <i class="iconV2 new-user-icon"></i>
                                                                                                                                            </p>

                                <div class="product-info-wrap clearfix">
                                    <p class="product-info-l">
                                        <span class="interest-rate">预期年化利率：<fmt:formatNumber value="${invest.EXP_Y_RATE}" type="percent"/></span>
                                        <span class="invest-period">投资期限：${invest.TERM}</span>
                                    </p>

                                    <p class="product-info-r">
                                        <span class="invest-price">项目本金：${invest.PROD_CAPITAL}
                                            元</span>
                                                                                    <span class="remain-price">剩余可投金额：${invest.PROD_CAPITAL-invest.gathered_amt}
                                                元</span>
                                                                                                                                                                                                    </p>
                                </div>
                            </div>
                                              <div class="operate-status clearfix">
                                    <div class="current-amount">
                                        <strong>当前投资金额</strong>
                                        <span class="cur">${invest.LOW_AMT}</span> 元起
                                                </div>
                                                              <a href="investmentInfo.do?prod_no=${invest.prod_no}" target="_blank" class="btns">${invest.state}</a>                                                      </div>
                                                    </li>
                          </c:forEach>              
                       
                                    </ul>

                <div class="cpagination ui_complex_pagination">
                   <a href="InvestMent.do?current=1&startTerm=${startTerm}&endTerm=${endTerm}&startAmt=${startAmt}&endAmt=${endAmt}" class="btns btn_page btn_small last">首页</a>
                   <c:choose>
                   <c:when test="${current>1}">
                    <a href="InvestMent.do?current=${current-1}&startTerm=${startTerm}&endTerm=${endTerm}&startAmt=${startAmt}&endAmt=${endAmt}" class="btns btn_page btn_small next">上一页</a>
                    </c:when>
                    <c:otherwise>
                      <a href="#" class="btns btn_page btn_small next">上一页</a>
                    </c:otherwise>
                 </c:choose>
                    <p class="pageNum">第${current}页/共${totalPage}页</p>
                    <c:choose>
                    <c:when test="${current<totalPage}">
                    <a class="btns btn_page btn_small next" href="InvestMent.do?current=${current+1}&startTerm=${startTerm}&endTerm=${endTerm}&startAmt=${startAmt}&endAmt=${endAmt}" id="nextPage">下一页<span class="caret">&gt;</span></a>
                    </c:when>
                    <c:otherwise>
                   <a class="btns btn_page btn_small next" href="#" id="nextPage">下一页<span class="caret">&gt;</span></a>
                    </c:otherwise>
                    </c:choose>
                    <a class="btns btn_page btn_small last" href="InvestMent.do?current=${totalPage}&startTerm=${startTerm}&endTerm=${endTerm}&startAmt=${startAmt}&endAmt=${endAmt}" id="lastPage">尾页</a>
                </div>

            </div>
            <div class="go-top hidden">
            </div>

        </div>
        <div class="list-sidebar">
                            <div class="weekly-data sidebar-panels">
                    <h3 class="weekly-data-head">
                        一周交易数据
                    </h3>
                    <ul class="weekly-data-body">
                        <li><i class="icon">&nbsp;</i><span class="record-great">${investCount.count}</span>人
                            成功投资
                        </li>
                        <li><i class="icon">&nbsp;</i><span class="record-success">${profitCount.count}</span>人
                            收到本金和利息
                        </li>
                        <li><i class="icon">&nbsp;</i><span class="record-success">${transferCount.count}</span>人
                            成功转让
                        </li>
                    </ul>
                </div>
                                <div class="ad-img">
            <a href="http://www.lufax.com/licai" target="_blank">
            <img src="images/ad_account_right_260802.jpg" alt="" style="width: 100%;">
        </a>
    </div>
         
        </div>
    </div>
</div>
<jsp:include page="/getButtom.do" flush="true" />



</body></html>