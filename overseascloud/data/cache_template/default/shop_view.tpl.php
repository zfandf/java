<?php defined('ZZQSS') or exit('Access Denied'); ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<meta content="JUSTYLE,2010,春夏,伦敦之旅,圆领,图案,印花,绣花工艺,休闲T恤,L,黑色, 代购" name="keywords">
<link href="<?php echo TPL;?>css/NewTopFoot.css" rel="Stylesheet" type="text/css">
<link type="text/css" rel="stylesheet" href="<?php echo TPL;?>css/AddItemPanel.css">
<script type="text/javascript" src="<?php echo TPL;?>js/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/jQuery.Extend.js"></script>
<script src="<?php echo TPL;?>js/jQuery.Drag.min.js" type="text/javascript"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/jquery.cookies.2.1.0.min.js"></script>
<script src="<?php echo TPL;?>js/Gobal.js" type="text/javascript"></script>
<link type="text/css" rel="stylesheet" href="<?php echo TPL;?>css/Product.css">
<script type="text/javascript" src="<?php echo TPL;?>js/jquery.json-1.3.min.js"></script>
   
    <script type="text/javascript">
        var flag = false;
        var pid = <?php echo $gid;?>;
var pimg="<?php echo $value['goodsimg'];?>";
        $(document).ready(function() {
            var pname = $.trim($(".you h1").text()).replace("\n","");
            var data = {};
            var newOptions = { domain: '', hoursToLive: 168 };
            try {
                data = $.evalJSON(jaaulde.utils.cookies.get("shopscan"));
            } catch (eee) {
                data = null;
            }
            if (data != null) {
                data = $.grep(data, function(item, index) { return item["id"] != pid; });
 
                if (data.length >= 10) flag = true;
                $.each(data, function(index, item) {
                    $("#scan").append("<li><a href='shop.php?action=view&gid=" + item["id"] + "'><img src='" + item["pimg"] + "' alt='" + item["n"] + "'  /></a></li>");
                });
                if (flag) { data = $.grep(data, function(item, index) { return index < 9; }); }
                data = $.merge([{ "id": pid, "pimg": pimg, "n": pname}], data);
                jaaulde.utils.cookies.set("shopscan", $.toJSON(data), newOptions);
            }
            else {
                jaaulde.utils.cookies.set("shopscan", '[{"id":' + pid + ',"pimg":"' + pimg +'","n":"' + pname + '"}]', newOptions);
            }
            $(".ph dl").each(function() { $(this).mouseover(function() { $(".ph dl dt").hide(); $(".ph dl dd").show(); $(this).find("dd").hide(); $(this).find("dt").show(); }); });
            $(".ph dl:eq(0)").mouseover();
 
            $("#submitBtn").click(function() {
                $.ajax({
                    type: "POST",
                    url: "/ajax/shop_ajax.php?action=addbuynum",
                    dataType: "json",
                    contentType: "application/json;utf-8",
                    data: "{'pid':'" + pid + "'}",
                    timeout: 10
                });
            });
        });
    </script>



<title>
<?php echo $value['goodsname'];?> - <?php echo $cfg_site_name;?>
</title></head><body>



<form id="" action="" method="post" name="">

<?php include template('header'); ?>
<div class="weizhi">
        <p>
             <b>当前位置：</b><a href="<?php echo url("shop.php"); ?>">免邮商品</a><?php echo $position;?><span>&gt;</span><i><?php echo $value['goodsname'];?></i></p>
    </div>
    <div class="list">
  <div class="you" style="float:left;">
            <h1 id="goodsname"><?php echo $value['goodsname'];?></h1>
            <div class="product">
                <div class="img">
                    <a href="?pid=8294">
           
<img id="goodsimg" src="<?php echo $value['goodsimg'];?>" /></a>
                </div>
                <div class="parameter">
                    <div class="pl">
                      <p>推荐指数：<img alt="<?php echo $value['rindex'];?>" src="<?php echo TPL;?>images/star<?php echo $value['rindex'];?>.gif"></p>
                        <dl>
                            <dt>￥<span id="goodsprice"><?php echo $value['goodsprice'];?></span></dt>
                            
                        </dl>
                    </div>
                    <ul>
                        <li>代购数：<?php echo $value['buynum'];?>件</li>
                        <li>浏览次数：<?php echo $value['views'];?>次</li>
                        
                    </ul>
                    <div class="shopping">
                        <p>
                            本商品是免邮商品,购买国内运费免费！价格实惠，推荐选购！</p>
                        <a style="cursor: pointer;" onClick="FastAddShow('<?php echo url("$site_url/shop.php?action=view&gid=$value[gid]"); ?>')" id="submitBtn">我要代购</a>
                    </div>
                </div>
            </div>
            <div class="lm">
                <h3>
                    商品描述</h3>
            </div>
            <div class="miaoshu">

<?php echo $value['about'];?>

            </div>
        </div>
      <div class="zuo" style="float:right;">
        <div class="ranking">
  <div class="wap_h2">
          <h2 class="tit_jiantou_h2 h45">本站推荐</h2>
  </div>
          <div class="ph">

<?php if(is_array($leftarray)) foreach($leftarray AS $key => $r) { ?>
<dl>
<dt <?php if($key==0) { ?>style="display: block;"<?php } else { ?>style="display: none;"<?php } ?>>
<div class="img">
<a target="_blank" href="<?php echo url("shop.php?action=view&gid=$r[gid]"); ?>">
<img alt="<?php echo $r['goodsname'];?>" src="<?php echo $r['goodsimg'];?>">
</a>
</div>
<div class="xiangxi">
<h1>
<b><? echo $key+1; ?>.</b> <a target="_blank" href="<?php echo url("shop.php?action=view&gid=$r[gid]"); ?>">
<?php echo substrs($r['goodsname'],45);?></a>
</h1>
<label>
<?php echo $r['goodsprice'];?></label>
<p>
来源网站：<span><?php echo $r['shopname'];?></span></p>
</div>
</dt>
<dd <?php if($key==0) { ?>style="display: none;"<?php } else { ?>style="display: block;"<?php } ?>>
<span><? echo $key+1; ?></span>
<p>
<a target="_blank" href="<?php echo url("shop.php?action=view&gid=$r[gid]"); ?>">
<?php echo substrs($r['goodsname'],45);?></a>
</p>
</dd>
</dl>
<?php } ?>

          </div>
  

        </div>
        <div class="lately">
  <h2 class="tit_jiantou_h2">您最近浏览的宝贝</h2>
          <ul id="scan">
          </ul>
        </div>
      </div>
    </div>

<?php include template('footer'); ?>

    </form>

</body>
</html>