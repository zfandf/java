<?php defined('ZZQSS') or exit('Access Denied'); ?><script type="text/javascript" src="<?php echo TPL;?>js/xb/Gobal.js"></script>
<link href="<?php echo TPL;?>css/NewIndex.css" rel="stylesheet" type="text/css" />

<link href="add/AddItemPanel.css" rel="stylesheet" type="text/css" />
<div class="addpanel_dialog" style="display: none;">
  <div class="addpanel_windowname">
    <h2>一键填单</h2>
    <a id="closeBtn" title="关闭"></a> </div>
  <div class="addpanel_inlay">
    <div id="p0"> <img src="/add/newimages/loading.gif" alt="加载中。。。" />
      <p> 加载中…… </p>
    </div>
    <div id="p1"> </div>
    <div id="p2" style="display: none;"> </div>
    <div id="p3" style="display: none;"> </div>
  </div>
</div>
<div class="addpanel_overlay"> </div>
<script src="<?php echo TPL;?>js/Gobal.js" type="text/javascript"></script>


    <div class="All_top">
        <div class="site_nav">
            <div class="site_center">
  <?php if(empty($_USERS)) { ?>
                 <p class="login-info" id="Gobal_LoginInfo">你好！游客 请 <a href="<?php echo url("user.php?action=login"); ?>">[登录]</a> 或 <a href="<?php echo url("user.php?action=register"); ?>">[用户注册]</a>&nbsp;</p>
<?php } else { ?>
<p class="login-info" id="Gobal_LoginInfo">你好！<?php echo $_USERS['uname'];?> [<a href="<?php echo url("user.php?action=quit"); ?>">退出</a>]&nbsp;&nbsp;<a href="<?php echo url("m.php?name=pm"); ?>" target="_blank"><img src="<?php echo TPL;?>images/an2.gif" class="sms" alt="" />新短信<span class="orange">(<?php echo $_USERS['pm'];?>)</span></a>&nbsp;</p>
<?php } ?>
                <ul class="quick-menu">
                    
                    <li><a href="<?php echo url("shoppingcart.php"); ?>" class="gouwu" id="Gobal_Shoppingcart">购物车<span>(<?php echo $_CARTCOUNT;?>)</span></a></li>
<li><a href="<?php echo url("m.php"); ?>" id="Gobal_BiyProductCount">
                        会员中心<span></span></a></li>
                    <li><a href="<?php echo url("m.php?name=orderlist"); ?>">我的订单</a></li>
                    <li><a href="<?php echo url("help.php"); ?>">帮助中心</a></li>
                    <li><a id="translateLink">繁體切換</a></li>
                    
                    <li class="top_free"><a class="" href="<?php echo url("shop.php"); ?>" id="FreeSiteBtn">免邮商品</a></li>
                    
                    <li class="top_tool" id="Panli_Tools"><a href="javascript:;" onclick="return false;">
                        常用服务工具</a></li>
                </ul>
                <div class="mysj_box2" style="display: none" id="FreeSitePanel">
                    <div class="mysj_bk2">
                        <a href="<?php echo url("special.php"); ?>">专题活动</a>
                    </div>
                </div>
                <div class="gj_xl" id="Panli_ToolsList">
                    <ul>
<li><a target="_blank" href="<?php echo url("page.php?action=estimates"); ?>">费用估算</a></li>
            <li><a target="_blank" href="<?php echo url("page.php?action=measureconversion"); ?>">尺码换算</a></li>
            <li><a target="_blank" href="<?php echo url("page.php?action=postage"); ?>">运费价格</a></li>
            <li><a target="_blank" href="http://www.123cha.com/hl/">汇率换算</a></li>
            <li><a target="_blank" href="<?php echo url("page.php?action=track"); ?>">包裹跟踪查询</a></li>
       
                    </ul>
                </div>
            </div>
        </div>
        <div class="panli_wrapper">
            <div class="logo">
                <a href="/">
                    <img src="<?php echo TPL;?>images/xb/logo_s.gif" alt="<?php echo $cfg_site_name;?>" />
                </a>
            </div>
              <div class="fast_daigou">
  <input type="text" id="CrawlUrl" class="fast_wz" value="http://" />
                <div class="but">
<a class="linkbutton" id="CrawlBtn" href="javascript:;">快速代购</a>
                </div>
<div class="tip left" id="CrawlPromt">输入所有中国购物网站的商品链接地址就可以代购！</div>
            </div>			


            
        </div>
        
        
        <div class="yuanbj">
            <div class="channel" id="SiteIndex">
                <ul>
                    <li><a href="<?php echo url("index.php"); ?>" id="Default">首页</a></li>
                    
                    <li><a href="<?php echo url("fen.php"); ?>" id="cowry">分享购</a></li>
                    
                    <li><a href="<?php echo url("pinindex.php"); ?>" id="Piece">拼单购</a></li>
                    
                    <li><a href="<?php echo url("zhe.php"); ?>" id="GroupPurchasing">折扣购</a></li>

<li><a href="<?php echo url("news.php"); ?>" id="vip">网站动态</a></li>

                </ul>
                
                
                <div class="am_topss">
                    <div class="channel_sou">
                        
                        
                    </div>
                   
                </div>
            </div>
        </div>
        
    </div>