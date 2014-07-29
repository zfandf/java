<?php defined('ZZQSS') or exit('Access Denied'); ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<link href="<?php echo TPL;?>css/NewTopFoot.css" rel="Stylesheet" type="text/css">
<link type="text/css" rel="stylesheet" href="<?php echo TPL;?>css/AddItemPanel.css">
<link type="text/css" rel="stylesheet" href="<?php echo TPL;?>css/rmb.css">
<link type="text/css" id="styleName" rel="stylesheet" href="<?php echo TPL;?>css/blue/color.css"/ > 
<script type="text/javascript" src="<?php echo TPL;?>js/jquery-1.4.1.min.js"></script>

<script type="text/javascript" src="<?php echo TPL;?>js/jQuery.Extend.js"></script>

<script src="<?php echo TPL;?>js/jQuery.Drag.min.js" type="text/javascript"></script>

<script type="text/javascript" src="<?php echo TPL;?>js/jquery.cookies.2.1.0.min.js"></script>

<script src="<?php echo TPL;?>js/Gobal.js" type="text/javascript"></script>    

<script type="text/javascript" src="<?php echo TPL;?>js/mypanliGobal.js"></script>

<title>

</title>
<style>
.anniu{height:25px; padding-left:5px; padding-right:5px; border:#CCC solid 1px; background:#ffb619;}
</style>
</head>

<body>


    <form id="aspnetForm" action="RmbAccount.aspx" method="post" name="aspnetForm">
<div>
<input type="hidden" value="/wEPDwULLTEwNTYyNjAzMjkPZBYCZg9kFgJmD2QWAgIBD2QWAmYPZBYCAgEPZBYCAgEPFgIeC18hSXRlbUNvdW50ZmRk" id="__VIEWSTATE" name="__VIEWSTATE">
</div>

<?php include template('header'); ?>

    <div class="admin">
        <div class="ding">
            <div class="shouye">
                <a title="我的会员中心" href="<?php echo url("m.php"); ?>"></a>
            </div>
            <div class="lb">
               <div class="weizhi">
                      <b>当前位置：</b><a href="<?php echo url("m.php"); ?>">会员中心</a><span>&gt;</span>我的RMB帐户
                  </div>
                
                <div class="shezhi">
                    <p>
                        <a href="<?php echo url("m.php"); ?>">我的会员中心</a><span>|</span>风格设置：</p>
                    <ul>
                        <li onclick="changeStyle('orange')" class="mypanliS1"></li>
                        <li onclick="changeStyle('grey')" class="mypanliS2"></li>
                        <li onclick="changeStyle('blue')" class="mypanliS3"></li>
                    </ul>
                </div>
            </div>
        </div>

<?php include template('member_left'); ?>
        
    <div class="account">
        <div class="tishi">
            温馨提示：此处显示的是您在网站的人民币现金帐户余额；您可以在这里预先存放一定现金，以减少每次订购中的繁杂手续。
        </div>
        <div class="zhanghu">
            <div class="z_left">
                <div class="qian">
                    <img alt="我的RMB帐户" src="<?php echo TPL;?>images/qian.jpg">
                </div>
                <div class="yuer">
                    <h1>
                        亲爱的会员&nbsp;<?php echo $_USERS['showname'];?>&nbsp;，你好！</h1>
                    <dl>
                        <dt>帐户可用余额：<b>￥<?php echo $_USERS['money'];?></b></dt>
                        <dd>
                            <a  class="anniu" href="<?php echo url("m.php?name=rmbaccount&action=pay"); ?>">立即充值</a><a  class="anniu" href="<?php echo url("m.php?name=recordslist"); ?>">消费记录</a></dd>
                    </dl>
                    <p>
                        <a target="_blank" href="<?php echo url("help.php"); ?>">为什么有时充值成功了，但帐户余额没有变动？</a></p>
                </div>
            </div>
            <div class="z_right">
                <h2>
                    常见问题：</h2>
                <ul>
<?php $helparray=helplist(5,'')?>
<?php if(is_array($helparray)) foreach($helparray AS $r) { ?>
                    <li><a target="_blank" href="<?php echo url("help.php?action=view&id=$r[aid]"); ?>"><?php echo $r['title'];?></a></li>
<?php } ?>

                </ul>
            </div>
        </div>
        <div class="fangshi" style="display:none">
            <h2>
               在线充值方式</h2>
            <ul>
                <li><a href="<?php echo url("m.php?name=rmbaccount&action=pay&type=1"); ?>" class="k1"></a>
                    <p>
                        <a href="<?php echo url("m.php?name=rmbaccount&action=pay&type=1"); ?>">PayPal充值</a><span>(手续费：4%+0.3美元)</span></p>
                </li>
                <li><a href="<?php echo url("m.php?name=rmbaccount&action=pay&type=2"); ?>" class="k2"></a>
                    <p>
                        <a href="<?php echo url("m.php?name=rmbaccount&action=pay&type=2"); ?>">国外信用卡充值</a><span>(手续费：3%)</span></p>
                </li>
                <li><a href="<?php echo url("m.php?name=rmbaccount&action=pay&type=3"); ?>" class="k3"></a>
                    <p>
                        <a href="<?php echo url("m.php?name=rmbaccount&action=pay&type=3"); ?>">国内银行卡充值</a><span>(手续费：1%)</span></p>
                </li>
            </ul>
            <div>
                温馨提示：不同的支付平台，折算的货币单位不同，如果您有疑问<a target="_blank" href="<?php echo url("help.php"); ?>">点击这里查看</a>！</div>
        </div>	


        <div class="jilu">
            <div class="chongzhi">
                <h2>
                   最近充值记录</h2>
                <a href="<?php echo url("m.php?name=refundrecord&action=refund"); ?>" class="tui" style="display:none">我想申请退款</a><a href="###" class="more" style="display:none">查看更多</a>
            </div>
            <table>
                <tbody><tr>
                    <th>&nbsp;</th>
                    <th>日期</th>
                    <th>充值金额</th>
                    <th>充值方式</th>
                    <th>交易号</th>
                    <th>操作</th>
                </tr>

<?php if(is_array($dataarray)) foreach($dataarray AS $key => $r) { ?>
<tr>
<td class="z"><?php echo $key;?></td>
<td class="h"><?php echo date('Y-m-d H:i:s',$r['successtime']);?></td>
<td class="z3"><?php echo $r['money'];?></td>
<td class="z2"><?php echo $r['payname'];?></td>
<td class="z4"><?php echo $r['sn'];?> </td>
<td class="h"><a href="<?php echo url("m.php?name=refundrecord&action=refund&rid=$r[rid]"); ?>" class="tui">申请退款</a></td>
</tr>
<?php } ?>
            </tbody></table>
        </div>
    </div>

        <div class="yj">
        </div>
    </div>

    
<?php include template('footer'); ?>

    </form>

</body>
</html>
