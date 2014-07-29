<?php defined('ZZQSS') or exit('Access Denied'); ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="<?php echo $cfg_site_name;?>" />
<link type="text/css" rel="Stylesheet" href="<?php echo TPL;?>css/NewTopFoot.css" />
<link href="<?php echo TPL;?>css/AddItemPanel.css" rel="stylesheet" type="text/css" />
<script src="<?php echo TPL;?>js/jquery-1.4.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/Gobal.js"></script>
<link href="<?php echo TPL;?>css/tbsp.css" rel="stylesheet" type="text/css" />
<link href="<?php echo TPL;?>css/charging_center.css" rel="stylesheet" type="text/css" />
<title>女生服务  - <?php echo $cfg_site_name;?></title>
</head>
<body>
  <?php include template('header'); ?>
  <div id="page" style="border:1px solid #f0f0f0;overflow:hidden">
    
    <div id="content">
      <div class="grid-c">
        <div class="box page-info">
          <h2 class="title">女生代购充值中心</h2>
          <p class="desc">让充值变得更容易</p>
        </div>
      </div>
      <div class="grid-c2f">
        <div class="col-main">
          <div class="main-wrap">
            <div class="box">
              <div id="J_ChargingTab" class="tab-box">


<ul class="nav-box">
<li class="current">
<a  href="service.php?action=alipay"><span class="icon escoreicon">支付宝代充值</span></a>			
</li>
<li>
<a href="service.php?action=game"><span class="icon gameicon">网游直充 </span></a>			
</li>
<li>
<a href="service.php?action=qq"><span class="icon cashgifticon">充值QQ币 </span></a>				
</li>
<li>
<a href="service.php?action=tenpay"><span class="icon paymenticon">财付通充值 </span></a>
</li>
<li>
<a  href="service.php?action=other"><span class="icon lotteryicon">其他网址充值</span></a>			
</li>
<li>
<a  href="service.php?action=card"><span class="icon crediticon">信用卡还款 </span></a>				
</li>
</ul>				


                <div class="panel-box"> <span class="rc-tp"><span></span></span>
                  <div class="panel">
                    <div class="telephone">
<form name="service_product_list" method="post" action="<?php echo url("service.php?action=add&type=$action"); ?>" style="padding:0px; margin:0px;">
                      <table cellspacing="0" cellpadding="0" border="0" class="form-table">
                        <tbody>
                          <tr>
                            <td class="tel-img-box" colspan="2">安全 快捷 方便</td>
                          </tr>
                          <tr>
                            <th class="tel-num" scope="row"><label>支付宝帐号 ：</label></th>
                            <td><span class="tel-input-label">
                              <input type="text" name="account" autocomplete="off" maxlength="50" class="tel-input" id="J_TelInput" style="color: rgb(128, 128, 128);" />
                            </span></td>
                          </tr>
                          <tr>
                            <th scope="row"><label style="color:red">充值金额：</label></th>
                            <td><span class="tel-input-label" style="width:100px">
                                <input name="money" type="text" class="tel-input" id="phone" style="color: rgb(128, 128, 128); width:100px" size="10" maxlength="12" autocomplete="off" />
                            </span></td>
                          </tr>
                          <tr>
                            <th scope="row"><label id="J_PriceLabel"></label></th>
                            <td><div class="feild-box"></div></td>
                          </tr>
                          <tr>
                            <td colspan="2"><button id="J_SubmitButton" class="btn-submit" type="submit">点此充值 </button>
                              <a href="" target="_blank">大概几分钟后到帐</a> </td>
                          </tr>
                        </tbody>
                      </table>
</form>
                    </div>
                  </div>
                  <div class="panel"></div>
                  <div class="panel"></div>
                  <div class="panel"></div>
                  <div class="panel"></div>
                  <div class="panel"></div>
                  <div class="panel"></div>
                  <div class="panel"></div>
                  <div class="panel"></div>
                  <div class="panel"></div>
                  <span class="rc-bt"><span></span></span> </div>
              </div>
            </div>
            <div class="box more-service">
              <ul class="ul-has-icon">
              </ul>
            </div>
          </div>
        </div>
        <div class="col-sub">
          <div class="box side-banner"> <a href="#"><img src="<?php echo TPL;?>images/T1h.hFXiBoXXXXXXXX-180-250.jpg" alt="ad" /></a> </div>
          <div class="box"> <span class="rc-tp"><span></span></span>
            <div class="hd">
              <h3>充值帮助 </h3>
            </div>
            <div class="bd">
              <ul>
<?php if(is_array($helparray)) foreach($helparray AS $r) { ?>
<li><a href="<?php echo url("help.php?action=view&id=$r[aid]"); ?>" target="_blank" title="<?php echo $r['title'];?>"><?php echo $r['title'];?></a></li>

<?php } ?>
              </ul>
            </div>
            <span class="rc-bt"><span></span></span> </div>
        </div>
      </div>
    </div>
  </div>
  <?php include template('footer'); ?>
</body>
</html>
