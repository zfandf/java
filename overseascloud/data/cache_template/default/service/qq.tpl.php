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
                <li class="nav first "><span class="rc-tp"></span><a href="service.php?action=alipay" data-height="431"><span>支付宝代充值</span></a></li>
                <li class="nav "><a href="service.php?action=game" data-height="431"><span>网游直充 </span></a></li>
                <li class="nav"><a href="service.php?action=qq" data-height="682"><span>充值QQ币 </span></a></li>
                <li class="nav"><a href="service.php?action=tenpay" data-height="431"><span>财付通充值 </span></a></li>
                <li class="nav"><a href="service.php?action=other" data-height="682"><span>其他网址充值</span></a></li>
                <li class="nav last selected"><span class="rc-bt"></span><a href="service.php?action=card" data-height="600"><span>信用卡还款 </span></a></li>
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
                            <th class="tel-num" scope="row"><label>充值种类：</label></th>
                            <td><SELECT style="WIDTH: 130px" id=cat onchange=changeResPrice(this);; name=cat>
                                <OPTION value=请选择类型 >请选择类型 </OPTION>
                                <option value="Q币" selected="selected">Q币</option>
                                <option value="QQ会员">QQ会员</option>
                                <option value="QQ红钻">QQ红钻</option>
                                <option value="QQ黄钻">QQ黄钻</option>
                                <option value="QQ蓝钻">QQ蓝钻</option>
                                <OPTION value=-29>QQ紫钻</OPTION>
                                <option value="QQ粉钻">QQ粉钻</option>
                                <option value="QQ黑钻">QQ黑钻</option>
                                <option value="QQ交友">QQ交友</option>
                                <option value="QQ音乐绿钻">QQ音乐绿钻</option>
                              </SELECT>
                            &nbsp;</td>
                          </tr>
                          <tr>
                            <th scope="row"><label>金额：</label></th>
                            <td><span class="feild-box denomination">
                              <select name="amount" id="J_DenominationSelect">
                                <option value="5">5元</option>
                                <option value="10">10元</option>
                                <option value="20">20元</option>
                                <option selected="selected" value="30">30元</option>
                                <option value="50">50元</option>
                                <option value="100">100元</option>
                                <option value="200">200元</option>
                                <option value="300">300元</option>
                                <option value="500">500元</option>
                                <option value="1000">1000元</option>
                              </select>
                            </span></td>
                          </tr>
                          <tr>
                            <th scope="row"><label>QQ号：</label></th>
                            <td><span class="tel-input-label">
                              <input type="text" name="qq" autocomplete="off" maxlength="50" class="tel-input" id="J_TelInput" style="color: rgb(128, 128, 128);" />
                            </span></td>
                          </tr>
                          <tr>
                            <th scope="row"><label id="J_PriceLabel">价格：</label></th>
                            <td><div class="feild-box"> <strong class="price" id="J_Price"> </strong> </div></td>
                          </tr>
                          <tr>
                            <td colspan="2"><button id="J_SubmitButton" class="btn-submit" type="submit">点此充值 </button>
                              <a href="#" target="_blank">大概几分钟后到帐</a> </td>
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
            <div class="bd"> <ul>
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
