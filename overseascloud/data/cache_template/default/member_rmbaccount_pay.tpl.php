<?php defined('ZZQSS') or exit('Access Denied'); ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">  
<link type="text/css" rel="stylesheet" href="<?php echo TPL;?>css/NewTopFoot.css"  />
<link type="text/css" id="styleName" rel="stylesheet" href="<?php echo TPL;?>css/orange/color.css"/ >    
<link type="text/css"  rel="stylesheet" href="<?php echo TPL;?>css/rmb.css"/>
<script src="<?php echo TPL;?>js/jquery-1.4.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/wdggcGobal.js"></script>


<title>我的购物车-充值页面</title>
</head>

<body>

<?php include template('header'); ?>

 <div class="admin">
        <div class="ding">
            <div class="shouye">
                <a href="<?php echo url("m.php"); ?>" title="我的会员中心"></a>
            </div>
            <div class="lb">
                <div class="weizhi">
                      <b>当前位置：</b><a href="<?php echo url("m.php"); ?>">会员中心</a><span>&gt;</span><a href="<?php echo url("m.php?name=rmbaccount"); ?>">我的RMB帐户</a><span>&gt;</span>RMB帐户充值
                  </div>
                
                <div class="shezhi">
                    <p>
                        <a href="<?php echo url("m.php"); ?>">我的会员中心</a><span>|</span>风格设置：</p>
                    <ul>
                        <li class="mypanliS1" onclick="changeStyle('orange')"></li>
                        <li class="mypanliS2" onclick="changeStyle('grey')" ></li>
                        <li class="mypanliS3" onclick="changeStyle('blue')"></li>
                    </ul>
                </div>
            </div>
        </div>

<?php include template('member_left'); ?>
        
    <div class="account">
        <div class="gaiyao">
            <h2>
                RMB帐户充值</h2>
            <ul>
                <li><span>1.</span> 为了确保您的帐户及购物安全，请填写下面信息。本网站绝不会向任何第三方披露用户个人信息。</li>
                <li><span>2.</span> 在您使用国外信用卡充值购物时，为保证交易安全，需由您（持卡人）持本人护照签收。</li>
            </ul>
        </div>
        <div class="fashion">
            <h2>
               请选择您要充值的方式：</h2>
            <ul class="optional">
                <li <?php if($type==1) { ?>class="on"<?php } ?>><a onclick="selectPay(this,'PayPalPay')" href="javascript:;" class="p1"></a></li>
                <li <?php if($type==2) { ?>class="on"<?php } ?>><a onclick="selectPay(this,'overseaPay')" href="javascript:;" class="p2"></a></li>
                <li <?php if($type==3) { ?>class="on"<?php } ?>><a onclick="selectPay(this,'DomesticPay')" href="javascript:;" class="p3"></a></li>
            </ul>
            
            
            
            
            
            
            
          
            <div id="PayPalPay" class="box" <?php if($type!=1) { ?>style="display: none;"<?php } ?>>
           
            
                <div class="point">
                    温馨提示：接受各种外币，所有使用的货币PayPal均以<span>美元</span>进行折算。
                </div>
                <h3>
                    请填选您要充值的金额：</h3>
                <ul class="edu">
                    <li>
                        <label>
                            <input type="radio" onclick="paypal.SP(this);" value="10.00" name="PayPalPrice" checked="checked">$10.00</label></li>
                    <li>
                        <label>
                            <input type="radio" onclick="paypal.SP(this);" value="20.00" name="PayPalPrice">$20.00</label></li>
                    <li>
                        <label>
                            <input type="radio" onclick="paypal.SP(this);" value="50.00" name="PayPalPrice">$50.00</label></li>
                    <li>
                        <label>
                            <input type="radio" onclick="paypal.SP(this);" value="100.00" name="PayPalPrice">$100.00</label></li>
                    <li>
                        <label>
                            <input type="radio" onclick="paypal.SP(this);" value="200.00" name="PayPalPrice">$200.00</label></li>
                    <li>
                        <label>
                            <input type="radio" onclick="paypal.SP(this);" value="500.00" name="PayPalPrice">$500.00</label></li>
                    <li>
                        <label>
                            <input type="radio" onclick="paypal.SP(this);" id="ppOther" value="0.00" name="PayPalPrice">其他金额:$</label><input type="text" onkeyup="value=value.replace(/[^\d\.]/g,'');setmoney('ppOther','ppomoney');paypal.sum($('#ppOther')[0]);" value="" disabled="disabled" id="ppomoney" maxlength="15" class="number"></li>
                </ul>
                <dl class="jiesuan">
                    <dt>充值手续费为：<span>4%&nbsp;+&nbsp;1.0美元</span></dt>
                    <dt>当前人民币-美元汇率为：<span><?php echo $ratedata['USD']['rate'];?></span></dt>
                    <dd>
                        <span id="dollar">$10.00</span>扣除充值手续费后，折合人民币约：<span><?php echo $ratedata['USD']['rate'];?><b id="ppRMB">17.02元</b></dd>
                </dl>
                <div class="next">
                    <input type="button" value="前往充值" onmouseout="this.className=''" onmouseover="this.className='by'" onclick="paypal.submit()">
                </div>
                <div class="paypal">
                    <div class="p_logo">
                        <img src="<?php echo TPL;?>images/paypal.gif"></div>
                    <dl>
                        <dt><a target="_blank" href="https://www.paypal.com/cgi-bin/webscr?cmd=_display-approved-signup-countries-outside">了解Paypal</a></dt>
                        <dd>
                            Paypal是全球最大的在线支付平台，可通过国际信用卡和各国银行卡，实现即时付款！</dd>
                    </dl>
                </div>
                <div class="yuan">
                </div>
            
            </dl>            
                
                
            </div>
            
            
            
            
            
            
            
            
         
            
            <div <?php if($type!=2) { ?>style="display: none;"<?php } ?> id="overseaPay" class="box">
                <div class="point">
                  	温馨提示：汇款后，请与在线客服联系帮您查收并充值！谢谢请把收据【提供】并保留起来，直到您收到包裹为止才丢弃哦^^ <br />
                    
                </div>
 
<dl class="payme" >
        <h3>MAYBANK <br />
            
         <table border="0" cellspacing="0" cellpadding="0" class="" bgcolor="#CCCCCC">
              <tr>
                <td style="width:200px">帐户名（Account Name)</td>
                <td style="width:300px">: Mak Lai Peng</td>    
              </tr>
              <tr>
                <td>账号（Account Number)</td>
                <td>: 5141 8742 7775</td>    
              </tr>
             
            
            </table></h3><br /><br />
                        
        
        
        <h3>HONG LEONG BANK<br />
            
           <table border="0" cellspacing="0" cellpadding="0" class="" bgcolor="#CCCCCC">
              <tr>
                <td style="width:200px">帐户名（Account Name)</td>
                <td style="width:300px">: Mak Lai Peng</td>    
              </tr>
              <tr>
                <td>账号（Account Number)</td>
                <td>: 061-00-04009-8</td>    
              </tr>
             
            
            </table></h3><br /><br />
                        
        <h3>         
        
        
Email通知：mymygroup888@gmail.com<br />
SMS通知：6012-3183 016<br />
-------汇款后您必需附上一些私人资料--------<br /> 
收件人名字：您的名字   <br />
收件人地址：您的地址<br />
转帐银行 ：您汇款至哪家银行<br />
转帐总额 ：您一共汇了多少钱给本店<br />
转帐日期 ：您付款的日期<br />
谢谢您！ 
<tr></tr>
                </h3>
                 </div></dl>
            
                
        
           
   
     
            
            
            
            
            
            
            
            
              <div <?php if($type!=3) { ?>style="display: none;"<?php } ?> id="DomesticPay" class="box">
               <div class="point">
                  	温馨提示：汇款后，请与在线客服联系帮您查收并充值！谢谢请把收据【提供】并保留起来，直到您收到包裹为止才丢弃哦^^ <br />
                    
                </div>




<dl class="payme">
        <h3>HSBC Bank<br />
            
         <table border="0" cellspacing="0" cellpadding="0" class="" bgcolor="#CCCCCC">
              <tr>
                <td style="width:200px">帐户名（Account Name)</td>
                <td style="width:300px">: Mak Lai Peng</td>    
              </tr>
              <tr>
                <td>账号（Account Number)</td>
                <td>: 053-169975-108</td>    
              </tr>
             
            
            </table></h3><br /><br />
            
            
            
                    <h3>Alliance Bank<br />
            
           <table border="0" cellspacing="0" cellpadding="0" class="" bgcolor="#CCCCCC">
              <tr>
                <td style="width:200px">帐户名（Account Name)</td>
                <td style="width:300px">: LCT Success Trading</td>    
              </tr>
              <tr>
                <td>账号（Account Number)</td>
                <td>: 121810010011058</td>    
              </tr>
             
            
            </table></h3><br /><br />
                        
        <h3>Email通知：mymygroup888@gmail.com<br />
SMS通知：6012-3183 016<br />
-------汇款后您必需附上一些私人资料--------<br /> 
收件人名字：您的名字   <br />
收件人地址：您的地址<br />
转帐银行 ：您汇款至哪家银行<br />
转帐总额 ：您一共汇了多少钱给本店<br />
转帐日期 ：您付款的日期<br />
谢谢您！ <br />
                </h3>
            </div></dl>
            
  
               
       </div>
        </div>
    </div>
    
    
    
    
    
    
    <input type="hidden" id="exchange" value="<?php echo $ratedata['USD']['rate'];?>">

   <script type="text/javascript">
        function selectPay(dom, id) { $(".optional li").removeAttr("class"); $(".box").hide(); $(dom).parent("li").attr("class", "on"); $("#" + id).show(); }

        function setmoney(radioID, textID) { document.getElementById(radioID).value = document.getElementById(textID).value || 0.00; }
        var paypal = {
            money: document.getElementById("dollar"),
            exchange: document.getElementById("exchange").value,
            RMB: document.getElementById("ppRMB"),
            isOther: function() { if ($("#ppOther")[0].checked) $("#ppomoney").attr("class", "number_").removeAttr("disabled"); else $("#ppomoney").attr("class", "number").attr("disabled", "disabled"); },
            sum: function(dom) { this.money.innerHTML = "USD" + dom.value; var r = ((parseFloat(dom.value) * 0.96 - 1.0) * this.exchange); this.RMB.innerHTML = (r > 0 ? r - 0.005 : 0.00).toFixed(2) + "元"; },
            SP: function(dom) { if (dom.checked && (this.RMB || (this.RMB = document.getElementById("ppRMB"))) && (this.money || (this.money = document.getElementById("dollar"))) && (dom.value >= 0 || !(this.money.innerHTML = "RM0.00"))) this.sum(dom); this.isOther(); },
            submit: function() { var s = parseFloat($("#PayPalPay input:checked").val()); if (s > 0) window.open("/m.php?name=pay&action=paypal&amount=" + s); else alert("请正确输入要充值的金额"); }
        }
        var oversea = {
            RMB: document.getElementById("oRMB"),
            isOther: function() { if ($("#oOther")[0].checked) $("#oomoney").attr("class", "number_").removeAttr("disabled"); else $("#oomoney").attr("class", "number").attr("disabled", "disabled"); },
            SP: function(dom) { if (dom.checked && (this.RMB || (this.RMB = document.getElementById("oRMB")))) this.sum(dom); this.isOther(); },
            sum: function(dom) { var r = dom.value * 0.99; this.RMB.innerHTML = (r > 0 ? r - 0.000 : 0.00).toFixed(2) + "元"; },
            submit: function() { var url = $("input[name='otype']")[0].checked ? "/m.php?name=pay&action=ChinaBank" : "/m.php?name=pay&action=ips"; var s = parseFloat($("#overseaPay input:checked").val()); if (s > 0) window.open(url + "&amount=" + s); else alert("请正确输入要充值的金额"); }
        }
        var china = {
            RMB: document.getElementById("dpRMB"),
            isOther: function() { if ($("#dpOther")[0].checked) $("#dpomoney").attr("class", "number_").removeAttr("disabled"); else $("#dpomoney").attr("class", "number").attr("disabled", "disabled"); },
            SP: function(dom) { if (dom.checked && (this.RMB || (this.RMB = document.getElementById("dpRMB")))) this.sum(dom); this.isOther(); },
            sum: function(dom) { var r = dom.value * 0.99; this.RMB.innerHTML = (r > 0 ? r - 0.005 : 0.00).toFixed(2) + "元"; },
            submit: function() { var s = parseFloat($("#DomesticPay input:checked").val()); if (s > 0) window.open("/m.php?name=pay&action=ips&amount=" + s); else alert("请正确输入要充值的金额"); }
        }


        $(document).ready(function() {
            paypal.sum($("#PayPalPay input:checked")[0]);
            oversea.sum($("#overseaPay input:checked")[0]);
            china.sum($("#DomesticPay input:checked")[0]);
        });
    </script>


    
      
    </div>

<?php include template('footer'); ?>
    
</body>
</html>
