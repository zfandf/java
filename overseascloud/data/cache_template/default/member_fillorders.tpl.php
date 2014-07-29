<?php defined('ZZQSS') or exit('Access Denied'); ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<link type="text/css" rel="stylesheet" href="<?php echo TPL;?>css/AddItemPanel.css">
<link type="text/css" rel="stylesheet" href="<?php echo TPL;?>css/NewTopFoot.css"  />
<link type="text/css" id="styleName" rel="stylesheet" href="<?php echo TPL;?>css/blue/color.css"/ >    
<link type="text/css" rel="stylesheet" href="<?php echo TPL;?>css/circuit.css"/>
<script src="<?php echo TPL;?>js/jquery-1.4.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/wdggcGobal.js"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/FillShoppingForm.js"></script>

<title>我要代购 -<?php echo $cfg_site_name;?></title>
</head>

<body>

<?php include template('header'); ?>

    <div class="admin">
        <div class="ding">
            <div class="shouye">
                <a title="我的首页" href="<?php echo url("m.php"); ?>"></a>
            </div>
            <div class="lb">
               <div class="weizhi">
                      <b>当前位置：</b><a href="<?php echo url("m.php"); ?>">会员中心</a><span>&gt;</span>我要代购
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
        <div class="circuit">
            <img alt="步骤" src="<?php echo TPL;?>images/donghua.gif">
        </div>
        <div id="fillshopingStep1">
            <div class="write">
                <label>
                    购买商品页网址：</label>
                <div class="address">
                    <input type="text" onfocus="$('#itemUrlTip').attr('class','dhk').html('&lt;p&gt;请将您想代购商品的&lt;span&gt;详细页网址&lt;/span&gt;粘贴到输入框中提交！&lt;/p&gt;');" value="" id="myPanli_itemUrl"></div>
                <input type="button" onmouseout="this.className='tijiao'" onmouseover="this.className='tijiao_'" name="" class="tijiao" onclick="toGetPro()" id="toGetProBtn">
            </div>
            <div id="itemUrlTip" class="dhk"><p>请将您想代购商品的<span>详细页网址</span>!{lang Details_page_URL!}！</p></div>
            <div class="tishi">
                <h2>
                    温馨提示：</h2>
                <ul>
                    <li>我们的系统将自动抓取您想代购商品的信息，试试看吧！</li>
                    <li>我们可为您代购中国所有购物网站的商品喔！</li>
                </ul>
            </div>

<div style="width:650px; height:200px; margin:auto;">
<script type='text/javascript'>
alimama_pid='mm_14900542_0_0';
alimama_type='g';
alimama_tks={};
alimama_tks.style_i=1;
alimama_tks.lg_i=1;
alimama_tks.w_i=572;
alimama_tks.h_i=69;
alimama_tks.btn_i=1;
alimama_tks.txt_s='';
alimama_tks.hot_i=1;
alimama_tks.hc_c='#0065FF';
alimama_tks.c_i=1;
alimama_tks.cid_i=0;
</script>
                                                                         
         </div>
			



        </div>
        <div style="display: none;" id="fillshopingStep2">
            <div class="wangzhi">
                <dl>
                    <dt>购买商品页网址：</dt>
                    <dd>
                        <input type="text" id="gsItemUrl" value="" disabled="disabled" class="text hui"></dd>
                </dl>
                <p>
                    温馨提示：如果代购商品信息未能抓取（或信息不完整），请您填写商品相关信息！</p>
                <p style="display: none;" class="alert">
                   系统未能完整抓取商品信息，您可以在输入框中填写相关信息</p>
            </div>
            <div class="data" style="height:auto;">
                <div class="img">
                    <img onerror="this.src='<?php echo TPL;?>images/noimg80.gif'" alt="" src="<?php echo TPL;?>images/noimg80.gif" id="gsItemImg"></div>
                
                <table>
                    <tbody><tr>
                        <td class="zuo">
                            商品名称：
                        </td>
                        <td>
                            <input type="text" value="请填写商品名称" id="gsItemName" class="text_k red" onblur="checkItemName(this)" onfocus="this.className='text_k';if($(this).val()=='请填写商品名称') $(this).val('');">
                        </td>
                    </tr>
                    <tr>
                        <td class="zuo">
                          商品价格：
                        </td>
                        <td>
                            <input type="text" value="请填写商品价格" id="gsItemPrice" onblur="value=value&gt;0?value:''; checkInput(this,'请填写商品价格');" onfocus="this.className='text';if(this.value=='请填写商品价格') this.value='';" class="text red" onkeyup="value=value.replace(/[^\d\.]/g,'')"><span>RMB</span>
                        </td>
                    </tr>
                    <tr>
                        <td class="zuo">
                            国内运费：
                        </td>
                        <td>
                            <div style="display: none;" class="fare" id="gsFare">
                                <div>
                                    <h2>
                                      关于商品运费的问题/h2>
                                    <a onclick="$('#gsFare').hide()" title="关闭" href="javascript:;"></a>
                                </div>
                                <p>
                                   因为系统未能抓取到您所需代购商品的运费，系统默认国内运费为人民币10元，如果默认运费与实际金额有出入，请在提交代购单后，与客服人员联系，修改运费！</p>
                                <p>
                                给您带来不便，请见谅；祝您在本网站代购愉快！
                                </p>
                            </div>
                            <input type="text" onclick="$('#gsFare').show();" value="10" readonly="readonly" class="text wen" id="gsItemFreight"><span>RMB</span>
                        </td>
                    </tr>
                    <tr>
                        <td class="zuo">
                            购买数量：
                        </td>
                        <td>
                            <input type="text" value="1" onkeyup="value=value.replace(/[^\d]/g,'')" id="gsItemNum" onblur="if($.trim(this.value).length&lt;=0||parseInt(this.value)&lt;1)this.value='1'" class="text"><a title="增加数量" onmouseup="$('#gsItemNum').val(parseInt($('#gsItemNum').val())+1);" href="javascript:;"></a><a title="减少数量" href="javascript:;" class="jian" onmouseup="if(parseInt($('#gsItemNum').val())&gt;1) $('#gsItemNum').val(parseInt($('#gsItemNum').val())-1);"></a>
                        </td>
                    </tr>
<tr>
<td class="zuo">
商品尺寸：<input id="productThumbnail" type="hidden" class="text"/>
</td>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="paddingbottom">
  <tr>
<td width="105" align="left" style="padding-bottom:0px;"> <input type="input" id="fillchicun" style="width:80px;" value=""  class="text" /></td>
<td width="70" style="width:70px;padding-bottom:0px;" align="left"  class="zuo">商品颜色：</td>
<td align="left"  style="padding-bottom:0px;"><input type="input" id="fillyanse"  style="width:80px;" value=""  class="text"/></td>
  </tr>
  </table>
  <style>
  .paddingbottom td{padding-bottom:0px;}
  </style>
  </td>
</tr>
                    <tr>
                        <td rowspan="2" class="zuo">
                            商品备注：
                        </td>
                        <td>
                            <div class="picking">
                                <input type="checkbox" value="" id="gsItemRemarkCheck" onclick="remarkChangeCheck()">如果无特殊商品备注说明-请勾选此项</div>
                            <textarea onkeyup="if($.trim(this.value).length&gt;0) $(this).attr('class','');else $(this).attr('class','still');" rows="" onfocus="if(this.className=='red'){this.value='';this.className='still';}" cols="" class="still" id="gsItemRemark"></textarea>
                        </td>
                    </tr>
                </tbody></table>
            </div>
            <ul class="go">
                <li>
                    <input type="button" onmouseover="this.className='next_'" onmouseout="this.className='next'" onclick="toShoppingCart()" class="next" id="gsToShoppingCartBtn">
                    <a onclick="step1()" href="javascript:;">[清空]</a>

<div style="float:left;padding:0px; margin:0px; line-height:28px">&nbsp;&nbsp;代发：<input name="BuySelffill" id="BuySelffill" type="checkbox" value="2" />
<span id="type1fill" style="COLOR: #f90">选中代发表示商品由你自己购买</span>
<span id="type2fill" style="display:none;">&nbsp;快递单号：<input name="expressnofill" type="input" id="expressnofill" style="width:80px;" value="">&nbsp;<font color="#ff9900">必填</font>
</span>
</div>
</li>
            </ul>
        </div>
        <div style="display: none;" id="fillshopingStep3">
            <div class="succeed">
                <h2>
                   恭喜！商品已经成功添加至购物车！</h2>
                <p>
                    您的购物车里共有<span id="sp_proTNum">5</span>件商品&nbsp;&nbsp;合计<span id="sp_proSum">100</span>元</p>
                <p style="color: rgb(255, 153, 0); margin-top: 10px; display: none;" id="favoriteInfo">
                   商品已成功添加至收藏夹</p>
            </div>
            <div class="last">
                <div class="img_2">
                    <img onerror="this.src='<?php echo TPL;?>images/noimg80.gif'" alt="" src="<?php echo TPL;?>images/noimg80.gif" id="sp_proPic"></div>
                <div class="show">
                    <h2 id="sp_proName">
                        商品名称</h2>
                    <ul>
                        <li>商品价格：<span id="sp_proPrice">￥150.00</span></li>
                        <li>国内运费：<span id="sp_proFright">20</span></li>
                        <li>购买数量：<span id="sp_proNum">1</span></li>
                    </ul>
                </div>
            </div>
            <div class="lastnav">
                <a href="<?php echo url("shoppingcart.php"); ?>">查看购物车并结算</a> <a onclick="step1()" href="javascript:;">
                    继续填写代购单</a>
            </div>
        </div>
    </div>

        <div class="yj">
        </div>
    </div>

    
<?php include template('footer'); ?>
</body>
</html>
