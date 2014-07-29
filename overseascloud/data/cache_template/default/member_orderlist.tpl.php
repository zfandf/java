<?php defined('ZZQSS') or exit('Access Denied'); ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<link href="<?php echo TPL;?>css/NewTopFoot.css"   rel="stylesheet" type="text/css" />
<link href="<?php echo TPL;?>css/AddItemPanel.css"   rel="stylesheet" type="text/css" />
<link href="<?php echo TPL;?>css/home.css"   rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<?php echo TPL;?>js/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/jQuery.Extend.js"></script>
<script src="<?php echo TPL;?>js/jQuery.Drag.min.js" type="text/javascript"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/jquery.cookies.2.1.0.min.js"></script>

<script src="<?php echo TPL;?>js/Gobal.js" type="text/javascript"></script>
<link type="text/css" id="styleName" rel="stylesheet" href="<?php echo TPL;?>css/blue/color.css"/ >
<script type="text/javascript" src="<?php echo TPL;?>js/wdggcGobal.js"></script>
<link type="text/css" rel="stylesheet" href="<?php echo TPL;?>css/OrderCart.css">
<script type="text/javascript" src="<?php echo TPL;?>js/jQuery.movePanel.min.js"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/OrderCart.js"></script>
<style type="text/css">
        .lipin
        {
            border: #ddd solid 1px;
            padding: 10px 0 10px 10px;
            background: #ffffcc;
            margin-bottom: 3px;
        }
        .lipin h3
        {
            font-size: 12px;
            height: 22px;
        }
        .lipin li
        {
            line-height: 20px;
        }
        .lipin p
        {
            text-align: right;
            margin-right: 10px;
        }
        .lipin a
        {
            color: #ff9900;
        }
        .lipin a:hover
        {
            text-decoration: none;
            color: #ff0000;
        }
       .w8 .shanchu
        {
            background: url(<?php echo TPL;?>images/sc_an.gif) no-repeat 0% -28px;
            margin-left: 10px;
            padding: 2px 0 5px 20px;
height:10px;
        }
    </style>

<title>我的订单 -<?php echo $cfg_site_name;?></title>
</head>
<body>

<?php include template('header'); ?>
<div class="admin">
  <div class="ding">
    <div class="shouye"> <a title="我的会员中心" href="<?php echo url("m.php"); ?>"></a> </div>
    <div class="lb">
              <div class="weizhi">
                      <b>当前位置：</b><a href="<?php echo url("m.php"); ?>">会员中心</a><span>&gt;</span>我的订单
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

  <div class="fill">
  <form method="post" action="<?php echo url("m.php?name=tosendorder"); ?>" enctype="multipart/form-data" name="form" onSubmit="return  submitToDeliverType()">
    <div id="productsList" class="qh">
      <ul class="xk">
        <li onclick="changePanel(0);" class="t">所有商品</li>
        <li onclick="changePanel(1);">已到仓库</li>
        <li onclick="changePanel(2);">已订购</li>
      </ul>
  
      <div style="margin: -35px 0pt 0pt; float: right; font-size: 12px; position: relative; width: 350px;"> <a style="float: right; color: rgb(255, 153, 0);" target="_blank" href="#">最新活动公告！</a> </div>
      <div id="vPanel0" class="vPanel">
<?php if(!empty($dataarray123)) { ?>
        <table width="100%" border="0" cellspacing="0" cellpadding="1">
          <tr>
            <td width="54" height="30" align="center" class="liebiao_top liebiao_bg">选择</td>
            <td width="100" height="30" align="center" class="liebiao_top liebiao_bg">图片</td>
            <td width="467" align="center" class="liebiao_top liebiao_bg">商品名称</td>
            <td width="109" height="30" align="center" class="liebiao_top liebiao_bg">单价<font color="red">(￥)</font></td>
            <td width="111" height="30" align="center" class="liebiao_top liebiao_bg">购买数量</td>
            <td width="123" height="30" align="center" class="liebiao_top liebiao_bg">重量（g）</td>
            <td width="193" height="30" align="center" class="liebiao_top liebiao_bg">订单状态</td>
            <td width="201" height="30" align="center" class="liebiao_top liebiao_bg">操作</td>
          </tr>
<?php if(is_array($dataarray123)) foreach($dataarray123 AS $r) { ?>
          <tr class="0deltr_<?php echo $r['oid'];?>">
            <td width="54" height="60" align="center"  class="w8">
<?php if($r['state']==1 || $r['state']==6) { ?>
<a class=shanchu onclick="del(<?php echo $r['oid'];?>, 0, 0)" href="javascript:;" title="点击取消订单"></a>
<?php } elseif ($r['state']<4) { ?>
<input type="checkbox" name="products[]" class="productsdisabled" value="<?php echo $r['oid'];?>" disabled="true"/>
<?php } elseif ($r['state']==4 && $r['orderweight']==0) { ?>
<input type="checkbox" name="products[]" class="productsdisabled" value="<?php echo $r['oid'];?>" disabled="true"/>
<?php } else { ?>
<input type="checkbox" name="products[]" id="products" class="products" value="<?php echo $r['oid'];?>" />
<?php } ?>
</td>
            <td height="60" align="left" > <a style="border:#ccc 1px solid;float:left" target="_blank" href="<?php echo $r['goodsurl'];?>"> <img src="<?php echo $r['showimg'];?>" style="width:50px;height:50px" onerror="this.src='<?php echo TPL;?>images/noimg80.gif'" /></a>
            &nbsp;</td>
            <td height="60" align="left" ><a href="<?php echo $r['goodsurl'];?>" target="_blank"  class="lan hg"> <?php echo $r['goodsname'];?></a></td>
            <td width="109" height="60" align="center" class="w4"><font color="red"><?php echo $r['goodsprice'];?></font></td>
            <td width="111" height="60" align="center" class="w5"><?php echo $r['goodsnum'];?></td>
            <td width="123" height="60" align="center" class="w6"><?php echo $r['orderweight'];?></td>
            <td width="193" height="60" align="center"><?php echo $r['statename'];?></td>
            <td width="201" height="60" align="center">
<input id="remark<?php echo $r['oid'];?>" type="hidden" value="<?php echo $r['goodsremark'];?>"/>
<a href="javascript:;" onclick="showRemarkPanel(<?php echo $r['oid'];?>, <?php if($r['state']==1) { ?>1<?php } else { ?>0<?php } ?>, this)" class="lan">备注</a> 
<?php if(!empty($r['orderremark'])) { ?>
<a href="javascript:;" onclick="showoRemark(<?php echo $r['oid'];?>)" class="lan"><img src="<?php echo TPL;?>images/wen.gif"/></a>
<div class="orderremark" id="orderremark<?php echo $r['oid'];?>">
                        <p>
                            <?php echo $r['orderremark'];?></p>
                        <button onclick="$('#orderremark<?php echo $r['oid'];?>').hide();return false;">
                        </button>
            </div>
<?php } ?>
</td>
          </tr>
          <tr class="0deltr_<?php echo $r['oid'];?>">
            <td height="25" colspan="8" align="center" class="liebiao_lv liebiao_bg">商品ID：<?php echo $r['oid'];?> &nbsp;&nbsp;提交时间：<?php echo date('Y-m-d',$r['addtime']);?></td>
          </tr>

<?php } ?>
<tr><td colspan="8">
<div class="orderInfo" id="orderInfo" style="border:#ddd 1px dashed;line-height:30px;margin-bottom:25px;height:30px;background:url(../iamges/tixing.gif) #fdfde1 no-repeat 8px 7px;padding-left:25px"> </div>
</td></tr>
          <tr>
            <td height="30" colspan="8" valign="middle" class="hg_50"><span class="liebiao_xia_font1">选择：</span> <span class="liebiao_xia_font2">
<a href="javascript:;" onclick="CheckAll(true)">全选</a>
<a href="javascript:;" onclick="FCheck()">反选</a>
</span>
                <input name="submit" type="submit" class="in" onmouseover="this.className='in_'" onmouseout="this.className='in'" value="提交运送" />            </td>
          </tr>
        </table>		
<?php } else { ?>
        <div class="kong">
          <p> 您暂时还没有购物。有喜欢的宝贝，不妨在我们网站代购吧！</p>
          <a href="<?php echo url("m.php?name=fillorders"); ?>">我要代购</a><i>|</i><a href="<?php echo url("see.php"); ?>">随便逛逛</a> </div>
<?php } ?>




      </div>
      <div style="display: none;" id="vPanel1" class="vPanel">
<?php if(!empty($dataarray4)) { ?>
        <table width="100%" border="0" cellspacing="0" cellpadding="1">
          <tr>
            <td width="54" height="30" align="center" class="liebiao_top liebiao_bg">选择</td>
            <td width="100" height="30" align="center" class="liebiao_top liebiao_bg">图片</td>
            <td width="467" align="center" class="liebiao_top liebiao_bg">商品名称</td>
            <td width="109" height="30" align="center" class="liebiao_top liebiao_bg">单价<font color="red">(￥)</font></td>
            <td width="111" height="30" align="center" class="liebiao_top liebiao_bg">购买数量</td>
            <td width="123" height="30" align="center" class="liebiao_top liebiao_bg">重量（g）</td>
            <td width="193" height="30" align="center" class="liebiao_top liebiao_bg">订单状态</td>
            <td width="201" height="30" align="center" class="liebiao_top liebiao_bg">操作</td>
          </tr>
<?php if(is_array($dataarray4)) foreach($dataarray4 AS $r) { ?>
          <tr class="1deltr_<?php echo $r['oid'];?>">
            <td width="54" height="60" align="center"  class="w8">
<?php if($r['state']==1) { ?>
<A class=shanchu onclick="del(<?php echo $r['oid'];?>, 0, 0)" href="javascript:;" title="点击取消订单"></A>
<?php } elseif ($r['state']<4) { ?>
<input type="checkbox" name="products[]" class="productsdisabled" value="<?php echo $r['oid'];?>" disabled="true"/>
<?php } elseif ($r['state']==4 && $r['orderweight']==0) { ?>
<input type="checkbox" name="products[]" class="productsdisabled" value="<?php echo $r['oid'];?>" disabled="true"/>
<?php } else { ?>
<input type="checkbox" name="products[]" id="products" class="products" value="<?php echo $r['oid'];?>" />
<?php } ?>
</td>
            <td height="60" align="left" > <a style="border:#ccc 1px solid;float:left" target="_blank" href="<?php echo $r['goodsurl'];?>"> <img src="<?php echo $r['showimg'];?>" style="width:50px;height:50px" onerror="this.src='<?php echo TPL;?>images/noimg80.gif'" /></a>
            &nbsp;</td>
            <td height="60" align="left" ><a href="<?php echo $r['goodsurl'];?>" target="_blank"  class="lan hg"> <?php echo $r['goodsname'];?></a></td>
            <td width="109" height="60" align="center"  class="w4"><font color="red"><?php echo $r['goodsprice'];?></font></td>
            <td width="111" height="60" align="center"class="w5"><?php echo $r['goodsnum'];?></td>
            <td width="123" height="60" align="center" class="w6"><?php echo $r['orderweight'];?></td>
            <td width="193" height="60" align="center"><?php echo $r['statename'];?></td>
            <td width="201" height="60" align="center">
<input id="remark<?php echo $r['oid'];?>" type="hidden" value="<?php echo $r['goodsremark'];?>"/>
<input id="orderremark<?php echo $r['oid'];?>" type="hidden" value="<?php echo $r['orderremark'];?>"/>
<a href="javascript:;" onclick="showRemarkPanel(<?php echo $r['oid'];?>, <?php if($r['state']==1) { ?>1<?php } else { ?>0<?php } ?>, this)" class="lan">备注</a> 
<?php if(!empty($r['orderremark'])) { ?>
<a href="javascript:;" onclick="showorderRemark(<?php echo $r['oid'];?>, this)" class="lan"><img src="<?php echo TPL;?>images/wen.gif"/></a>
<?php } ?>
</td>
          </tr>
          <tr class="1deltr_<?php echo $r['oid'];?>">
            <td height="25" colspan="8" align="center" class="liebiao_lv liebiao_bg">商品ID：<?php echo $r['oid'];?> &nbsp;&nbsp;提交时间：<?php echo date('Y-m-d',$r['addtime']);?></td>
          </tr>

<?php } ?>
<tr><td colspan="8">
<div class="orderInfo" id="orderInfo" style="border:#ddd 1px dashed;line-height:30px;margin-bottom:25px;height:30px;background:url(../iamges/tixing.gif) #fdfde1 no-repeat 8px 7px;padding-left:25px"> </div>
</td></tr>
          <tr>
            <td height="30" colspan="8" valign="middle" class="hg_50"><span class="liebiao_xia_font1">选择：</span> <span class="liebiao_xia_font2">
<a href="javascript:;" onclick="CheckAll(true)">全选</a>
<a href="javascript:;" onclick="FCheck()">反选</a>
</span>
                <input name="submit" type="submit" class="in" onmouseover="this.className='in_'" onmouseout="this.className='in'" value="提交运送" />            </td>
          </tr>
        </table>		
<?php } else { ?>
        <div class="kong">
          <p> 您订购的商品可能正在运往仓库的途中，一旦到达仓库就可以提交运送了。</p>
          <a href="<?php echo url("m.php?name=fillorders"); ?>">我要继续代购</a><i>|</i><a href="<?php echo url("see.php"); ?>">随便逛逛</a> </div>
<?php } ?>

      </div>
    
<div style="display: none;" class="vPanel" id="vPanel2">
  
<?php if(!empty($dataarray5)) { ?>
        <table width="100%" border="0" cellspacing="0" cellpadding="1">
          <tr>
            <td width="54" height="30" align="center" class="liebiao_top liebiao_bg">选择</td>
            <td width="100" height="30" align="center" class="liebiao_top liebiao_bg">图片</td>
            <td width="467" align="center" class="liebiao_top liebiao_bg">商品名称</td>
            <td width="109" height="30" align="center" class="liebiao_top liebiao_bg">单价<font color="red">(￥)</font></td>
            <td width="111" height="30" align="center" class="liebiao_top liebiao_bg">购买数量</td>
            <td width="123" height="30" align="center" class="liebiao_top liebiao_bg">重量（g）</td>
            <td width="193" height="30" align="center" class="liebiao_top liebiao_bg">订单状态</td>
            <td width="201" height="30" align="center" class="liebiao_top liebiao_bg">操作</td>
          </tr>
<?php if(is_array($dataarray5)) foreach($dataarray5 AS $r) { ?>
          <tr class="2deltr_<?php echo $r['oid'];?>">
            <td width="54" height="60" align="center"  class="w8">
<?php if($r['state']==1) { ?>
<A class=shanchu onclick="del(<?php echo $r['oid'];?>, 0, 0)" href="javascript:;" title="点击取消订单"></A>
<?php } elseif ($r['state']<4) { ?>
<input type="checkbox" name="products[]" class="productsdisabled" value="<?php echo $r['oid'];?>" disabled="true"/>
<?php } elseif ($r['state']==4 && $r['orderweight']==0) { ?>
<input type="checkbox" name="products[]" class="productsdisabled" value="<?php echo $r['oid'];?>" disabled="true"/>
<?php } else { ?>
<input type="checkbox" name="products[]" id="products" class="products" value="<?php echo $r['oid'];?>" />
<?php } ?>
</td>
            <td height="60" align="left" > <a style="border:#ccc 1px solid;float:left" target="_blank" href="<?php echo $r['goodsurl'];?>"> <img src="<?php echo $r['showimg'];?>" style="width:50px;height:50px" onerror="this.src='<?php echo TPL;?>images/noimg80.gif'" /></a>
            &nbsp;</td>
            <td height="60" align="left" ><a href="<?php echo $r['goodsurl'];?>" target="_blank"  class="lan hg"> <?php echo $r['goodsname'];?></a></td>
            <td width="109" height="60" align="center"  class="w4"><font color="red"><?php echo $r['goodsprice'];?></font></td>
            <td width="111" height="60" align="center"class="w5"><?php echo $r['goodsnum'];?></td>
            <td width="123" height="60" align="center"  class="w6"><?php echo $r['orderweight'];?></td>
            <td width="193" height="60" align="center"><?php echo $r['statename'];?></td>
            <td width="201" height="60" align="center">
<input id="remark<?php echo $r['oid'];?>" type="hidden" value="<?php echo $r['goodsremark'];?>"/>
<input id="orderremark<?php echo $r['oid'];?>" type="hidden" value="<?php echo $r['orderremark'];?>"/>
<a href="javascript:;" onclick="showRemarkPanel(<?php echo $r['oid'];?>, <?php if($r['state']==1) { ?>1<?php } else { ?>0<?php } ?>, this)" class="lan">备注</a> 
<?php if(!empty($r['orderremark'])) { ?>
<a href="javascript:;" onclick="showorderRemark(<?php echo $r['oid'];?>, this)" class="lan"><img src="<?php echo TPL;?>images/wen.gif"/></a>
<?php } ?>
</td>
          </tr>
          <tr class="2deltr_<?php echo $r['oid'];?>">
            <td height="25" colspan="8" align="center" class="liebiao_lv liebiao_bg">商品ID：<?php echo $r['oid'];?> &nbsp;&nbsp;提交时间：<?php echo date('Y-m-d',$r['addtime']);?></td>
          </tr>

<?php } ?>
<tr><td colspan="8">
<div class="orderInfo" id="orderInfo" style="border:#ddd 1px dashed;line-height:30px;margin-bottom:25px;height:30px;background:url(../iamges/tixing.gif) #fdfde1 no-repeat 8px 7px;padding-left:25px"> </div>
</td></tr>
          <tr>
            <td height="30" colspan="8" valign="middle" class="hg_50"><span class="liebiao_xia_font1">选择：</span> <span class="liebiao_xia_font2">
<a href="javascript:;" onclick="CheckAll(true)">全选</a>
<a href="javascript:;" onclick="FCheck()">反选</a>
</span>
<input type="hidden" id="oids" name="oids" value=""/>
                <input name="submit" type="submit" class="in" onmouseover="this.className='in_'" onmouseout="this.className='in'" value="提交运送" disabled="true" />            </td>
          </tr>
        </table>		
<?php } else { ?>
        <div class="kong">
          <p> 您订购的商品可能正在处理中，请耐心等待哦。</p>
          <a href="<?php echo url("m.php?name=fillorders"); ?>">我要继续代购</a><i>|</i><a href="<?php echo url("see.php"); ?>">随便逛逛</a> </div>
<?php } ?>	  

      </div>
    </div>
  </div>

  <div class="yj"> </div>
</div>

    <script type="text/javascript">
        function showOrderInfo() {
            var w = 0; var m = 0; var n = 0;
            if ($(".products:checked", $("#vPanel" + vPanelIndex)).length > 0)
                $(".products:checked", $("#vPanel" + vPanelIndex)).each(function(i, d) {
n = parseFloat($.trim($(d).parent().nextAll(".w5").text()));
                    w += parseInt($.trim($(d).parent().nextAll(".w6").text()));
                    m += parseFloat($.trim($(d).parent().nextAll(".w4").text()))*n;


                });
            else
                w = m = n = 0;
            $(".orderInfo", $("#vPanel" + vPanelIndex)).html('选中的商品重量总计:<span>' + w + 'g</span>，商品价值:<span>￥' + m.toFixed(2) + '</span>(可获积分' + parseInt(Math.floor(m)) + '点)<a href="page.php?action=estimates&w=' + w + '&m=' + m.toFixed(2) + '" target="_blank">进行费用估算</a>');
        }
        showOrderInfo();
        $(":checkbox").click(showOrderInfo);
    </script>

<?php include template('footer'); ?>

    </form>
</body>
</html>