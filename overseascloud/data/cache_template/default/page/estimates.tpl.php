<?php defined('ZZQSS') or exit('Access Denied'); ?><!DOCTYPE  PUBLIC "-//W3C//DTD X 1.0 Transitional//EN" "http://www.w3.org/TR/x1/DTD/x1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/; charset=utf-8" http-equiv="Content-Type">
<link type="text/css" rel="stylesheet" href="<?php echo TPL;?>css/NewTopFoot.css"  />
<link type="text/css"  rel="stylesheet" href="<?php echo TPL;?>css/public.css"/>
<link type="text/css" rel="stylesheet" href="<?php echo TPL;?>css/Estimates.css">
<script src="<?php echo TPL;?>js/jquery-1.4.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/wdggcGobal.js"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/Gobal.js"></script>
<script src="<?php echo TPL;?>js/jqEstimates.js" type="text/javascript"></script>
<script src="<?php echo TPL;?>js/ui.js" type="text/javascript"></script>
<title>估算费用</title>
</head>
<body>
<?php include template('header'); ?>
<div class="gs_background">
  <div class="gs_center">
    <div class="pic">
      <div class="font">
        <p> <a href="" id="chima">帮助中心</a><span>&gt;</span><a href="#">常用工具</a><span>&gt;</span><b>费用估算</b></p>
        <div class="dashed"> </div>
      </div>
    </div>
    <div class="gs_bottom">
      <div class="gs_bj" id="EstimatesBG">
        <div id="EstimatesLeft" class="left">
          <h1> 费用估算</h1>
          <ul>
            <li class="one">
              <h3> 填写您需购买的商品总价格</h3>
              <input id="EstimatesPrice" onfocus="$('#EstimatesPrice').removeClass('red_t');$('#PriceTip').hide()" class="fangkuang" maxlength="7" onkeyup="value=value.replace(/[^\d\.]/g,'')" type="text">
              <em>(元)</em>
              <p id="PriceTip" style="display: none"> 填写商品价格后才能估算费用!</p>
            </li>
            <li class="two">
              <h3> 估算您需要购买的商品总重量<span>（不包括包装）</span></h3>
              <input id="EstimatesWeight" onfocus="$('#EstimatesWeight').removeClass('red_t');$('#WeightTip').hide()" class="fangkuang" maxlength="7" onkeyup="value=value.replace(/[^\d]/g,'')" type="text">
              <em>(g)</em>
              <p id="WeightTip" style="display: none"> 估算运费需要填写商品重量!</p>
            </li>
            <li class="three">
              <h3> 选择您的送货地区</h3>
              <select id="EstimatesArea" onclick="$('#AreaTip').hide()" onfocus="$('#AreaTip').hide()">
                <option selected="selected" value="0">运送区域</option>
                			
<?php if(is_array($areaarray)) foreach($areaarray AS $r) { ?>			

                <option value="<?php echo $r['aid'];?>"><?php echo $r['name_cn'];?></option>
                
<?php } ?>

                                
              </select>
              <br>
              <p id="AreaTip" style="display: none"> 送货地区还没有选择！</p>
              <div class="tishi">
                <dl>
                  <dt>温馨提示：</dt>
                  <dd>
                    <div id="westEou" class="ts" style="display: none" onmouseout="$('#westEou').hide();" onmouseover="$('#eastSou').hide();$('#westEou').show()"> 奥地利/比利时/丹麦/卢森堡/摩纳哥/芬兰/意大利/西班牙/希腊/土耳其/葡萄牙/挪威/瑞典/瑞士/马耳他/*冰岛(EMS例外) </div>
                    <a href="javascript:void(0);" onmouseout="$('#westEou').hide();" onmouseover="$('#eastSou').hide();$('#westEou').show()"> 西欧</a> </dd>
                  <dd>
                    <div id="eastSou" class="ts" style="display: none;" onmouseout="$('#eastSou').hide();" onmouseover="$('#westEou').hide();$('#eastSou').show()"> 马来西亚/新加坡/泰国/越南/柬埔寨/菲律宾/印度尼西亚/日本/韩国/蒙古/朝鲜/中国香港/中国澳门/中国台湾 </div>
                    <a href="javascript:void(0);" onmouseout="$('#eastSou').hide();" onmouseover="$('#westEou').hide();$('#eastSou').show()"> 东南亚</a> </dd>
                </dl>
              </div>
            </li>
            <li>
              <div class="an">
                <input id="EstimatesSubmit" class="anniu" value="费用估算" onmouseover="this.className='anniu_on'" onmouseout="this.className='anniu'" type="button">
              </div>
            </li>
          </ul>
        </div>
        <div id="EstimatesBox" class="box" style="display: none;">
          <h2> 估算结果</h2>
          <table id="EstimatesTable">
            <tbody>
              <tr>
                <th> 运送方式 </th>
                <th> 商品价格 </th>
                <th> 服务费 </th>
                <th> 报关费 </th>
                <th> 运费 </th>
                <th> 总计 </th>
              </tr>
            </tbody>
          </table>
          <p> 估算结果仅供参考，请以实际运费为准。</p>
        </div>
        <div id="EstimatesLoading" class="loading" style="display: none"> <img src="<?php echo TPL;?>images/loading_2.gif" alt="正估算中...">
          <p> 正估算中...</p>
        </div>
      </div>
    </div>
  </div>
</div>
<?php include template('footer'); ?>

<script type="text/javascript">
    $(function() {
        var a = function(c) {
            var b = "###";
            c = c.toLowerCase();
            if (c.indexOf("dhl") >= 0) {
                return b + "dhl.gif";
            }
            if (c.indexOf("ems") >= 0) {
                return b + "ems.gif";
            }
            return b + "air.gif";
        };
        $("#EstimatesSubmit").click(function() {
            if ($.trim($("#EstimatesPrice").val()).length <= 0) {
                $("#EstimatesPrice").addClass("red_t");
                $("#PriceTip").show();
                return;
            }
            if ($.trim($("#EstimatesWeight").val()).length <= 0) {
                $("#EstimatesWeight").addClass("red_t");
                $("#WeightTip").show();
                return;
            }
            if ($("#EstimatesArea").val() == 0) {
                $("#AreaTip").show();
                return;
            }
            $("#EstimatesSubmit").attr("disabled", "disabled");
            $.ajax({
                type: "POST",
                url: "/ajax/estimates_ajax.php?action=getdetails",
                dataType: "json",
                contentType: "application/json;utf-8",
                data: '{"weight":' + $("#EstimatesWeight").val() + ',"aid":' + $("#EstimatesArea").val() + ',"TotleProductCost":' + $("#EstimatesPrice").val()+"}",
                timeout: 5000,
                beforeSend: function() {
                    $("#EstimatesBG").attr("class", "gs_jg");
                    $("#EstimatesBox").hide();
                    $("#EstimatesLoading").show();
                },
                error: function() {
                    $("#EstimatesSubmit").removeAttr("disabled");
                    $("#EstimatesLoading").hide();
                    $("#EstimatesBG").attr("class", "gs_bj");
                    alert("服务器连接失败，请稍后再试。");
                },
                success: function(b) {
                    $("#EstimatesSubmit").removeAttr("disabled");
                    $("#EstimatesLoading").hide();
                    var c = b;
                    if ( !! c.error) {
                        $("#EstimatesBG").attr("class", "gs_bj");
                        alert(c.error);
                        $("#EstimatesLeft").show();
                        return;
                    }
                    $("#EstimatesTable tr:gt(0)").remove();
                    $.each(c.l,
                    function(e, d) {

                        $("#EstimatesTable").append('<tr><td>' + d.n + '</td><td>' + parseFloat($("#EstimatesPrice").val()).toFixed(2) + "</td><td>" + d.serverfee + "</td><td>" + d.e + "</td><td>" + d.m + '</td><td class="red">' + d.totlefee + "</td></tr>");
                    });
                    $("#EstimatesBox").show();
                }
            });
        });
    });


</script>	



</body>
</html>
