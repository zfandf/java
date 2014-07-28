<?php defined('ZZQSS') or exit('Access Denied'); ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<meta content="女装,男装,内衣,袜子,T恤,牛仔裤,西装,风衣,外套,马甲,雪纺,卫衣,针织,衬衫,韩版,日系,毛衣" name="keywords">
<meta content="<?php echo $cfg_site_name;?>服装栏目，为您推荐最新服装商品，包括女装,男装,内衣,袜子,T恤,牛仔裤,西装,风衣,外套,马甲,雪纺,卫衣,针织,衬衫,韩版,日系,毛衣等。喜欢就代购吧！" name="description">
<link href="<?php echo TPL;?>css/NewTopFoot.css" rel="Stylesheet" type="text/css">
<link type="text/css" rel="stylesheet" href="<?php echo TPL;?>css/AddItemPanel.css">

<script type="text/javascript" src="<?php echo TPL;?>js/jquery-1.4.1.min.js"></script>

<script type="text/javascript" src="<?php echo TPL;?>js/jQuery.Extend.js"></script>

<script src="<?php echo TPL;?>js/jQuery.Drag.min.js" type="text/javascript"></script>

<script type="text/javascript" src="<?php echo TPL;?>js/jquery.cookies.2.1.0.min.js"></script>

<script src="<?php echo TPL;?>js/Gobal.js" type="text/javascript"></script>


<link type="text/css" rel="stylesheet" href="<?php echo TPL;?>css/List.css">

<script type="text/javascript" src="<?php echo TPL;?>js/jquery.json-1.3.min.js"></script>

    <script type="text/javascript">
        var cate="<?php echo $typename;?>",subcate="";
        $(document).ready(function() {
            var cateList = $(".caidan h3");
            cateList.children("a[title=" + cate + "]").parent("h3").addClass("t");
            if (subcate != "")
                $(".caidan li:contains('" + subcate + "')").addClass("x");
            var data = $.evalJSON(jaaulde.utils.cookies.get("scan"));
            if (data != null) {
                $.each(data, function(index, item) {
                    $("#scan").append("<li><a href='recommend.php?action=view&gid=" + item["id"] + "'><img src='" + item["pimg"] + "' alt='" + item["n"] + "'  /></a></li>");
                });
            }
        });
    </script>

<style type="text/css">
.pages {float:right;height:25px;margin:15px 0 0 0;display:inline;}
.pages li{list-style-type: none;}
.pages  a{text-decoration:none;}
.pages li{
border:1px solid #AAAAAA;color:#666666;display:inline;float:left;height:20px;line-height:20px;margin-left:2px;padding:0 5px;text-decoration:none;}
.pages li {border:1px solid #DDDDDD;color:#CCC;font-family:"simsun";}
.pages li:hover {background:#FFEDE1;border:1px solid #FF9900;}
.pages .current {background:#FFEDE1;border:1px solid #FF6600;color:#FF0000;}
.pages em {color:#999999;display:inline;float:left;height:22px;line-height:22px;margin-left:5px;}
.lm{border:1px solid #ddd;}
</style>
<title>
<?php echo $gtype['typename'];?> - <?php echo $cfg_site_name;?>
</title></head><body>


<form id="aspnetForm" action="List.aspx?category=1" method="post" name="aspnetForm">

<?php include template('header'); ?>

<div class="list">
<div class="zuo">
    <div class="lm">
        <h2 class="tit_jiantou_h2 h45">热门商品分类</h2>
    </div>
    <div class="caidan">
        
               
<h3>
                    <a title="服装" href="<?php echo url("recommend.php?action=list&tid=1"); ?>">
                        <b>
                           服装</b><span>网罗流行靓鞋美包</span></a></h3>
                <ul>
                    
                            <li><a href="<?php echo url("recommend.php?action=list&tid=8"); ?>">
                                女装</a></li>
                            <li><a href="<?php echo url("recommend.php?action=list&tid=9"); ?>">
                                男装</a></li>
                            <li><a href="<?php echo url("recommend.php?action=list&tid=10"); ?>">
                                推荐人气美容精品</a></li>
                </ul>
            
                <h3>
                    <a title="鞋包" href="<?php echo url("recommend.php?action=list&tid=2"); ?>">
                        <b>
                            鞋包</b><span>网罗流行靓鞋美包</span></a></h3>
                <ul>
                    
                            <li><a href="<?php echo url("recommend.php?action=list&tid=11"); ?>">
                                鞋子</a></li>
                            <li><a href="<?php echo url("recommend.php?action=list&tid=12"); ?>">
                                箱包</a></li>
                </ul>
            
                <h3>
                    <a title="美容" href="<?php echo url("recommend.php?action=list&tid=3"); ?>">
                        <b>
                            美容</b><span>推荐人气美容精品</span></a></h3>
                <ul>
                    
                            <li><a href="<?php echo url("recommend.php?action=list&tid=13"); ?>">
                              彩妆</a></li>
                            <li><a href="<?php echo url("recommend.php?action=list&tid=14"); ?>">
                                护肤</a></li>
                            <li><a href="<?php echo url("recommend.php?action=list&tid=15"); ?>">
                               美容美发工具</a></li>
                </ul>
            
                <h3>
                    <a title="居家" href="<?php echo url("recommend.php?action=list&tid=4"); ?>">
                        <b>
                            居家</b><span>打造快乐居家生活</span></a></h3>
                <ul>
                    
                            <li><a href="<?php echo url("recommend.php?action=list&tid=16"); ?>">
                                家纺</a></li>
                            <li><a href="<?php echo url("recommend.php?action=list&tid=17"); ?>">
                                装饰</a></li>
                            <li><a href="<?php echo url("recommend.php?action=list&tid=18"); ?>">
                                日用</a></li>
                            <li><a href="<?php echo url("recommend.php?action=list&tid=19"); ?>">
                                办公文具</a></li>
                            <li><a href="<?php echo url("recommend.php?action=list&tid=20"); ?>">
                                礼品</a></li>
                </ul>
            
                <h3>
                    <a title="配饰" href="<?php echo url("recommend.php?action=list&tid=5"); ?>">
                        <b>
                            配饰</b><span>搜罗独特时尚配饰</span></a></h3>
                <ul>
                    
                            <li><a href="<?php echo url("recommend.php?action=list&tid=21"); ?>">
                                饰品</a></li>
                            <li><a href="<?php echo url("recommend.php?action=list&tid=22"); ?>">
                                服饰配件</a></li>
                </ul>
            
                <h3>
                    <a title="食品" href="<?php echo url("recommend.php?action=list&tid=6"); ?>">
                        <b>
                           食品</b><span>淘尽华夏各地美食</span></a></h3>
                <ul>
                    
                            <li><a href="<?php echo url("recommend.php?action=list&tid=23"); ?>">
                               特产</a></li>
                </ul>
            
    </div>   
    <div class="lately">
        <h2 class="tit_jiantou_h2">您最近浏览的宝贝</h2>
        <ul id="scan">

        </ul>
    </div>
</div>

        <div class="you">
            <div class="weizhi">
                <p>
                    <b>当前位置：</b><a href="<?php echo url("recommend.php"); ?>">编辑推荐</a><?php echo $position;?></p>
            </div>
            <div class="show">
                <ul>
                    

<?php if(is_array($dataarray)) foreach($dataarray AS $key => $r) { ?>
                            <li>
                                <div class="pic">
                                    <a target="_blank" href="<?php echo url("recommend.php?action=view&gid=$r[gid]"); ?>">
                                        <img alt="<?php echo $r['goodsname'];?>" src="<?php echo $r['goodsimg'];?>"></a></div>
                                <div class="summary">
                                    <h3>
                                        <a target="_blank" href="<?php echo url("recommend.php?action=view&gid=$r[gid]"); ?>">
                                             <?php echo substrs($r['goodsname'],90);?></a></h3>
                                    <b>￥<?php echo $r['goodsprice'];?></b>
                                    <p class="dd">
                                        <label>
                                            来源商家：</label><span><i><?php echo $r['shopname'];?></i></span><a target="_blank" href="<?php echo $r['sellerurl'];?>"><i><?php echo $r['goodsseller'];?></i></a>
                                  </p><p class="dt">
                                            <label>
                                                推荐指数：</label><soan><img alt="<?php echo $r['rindex'];?>" src="<?php echo TPL;?>images/star<?php echo $r['rindex'];?>.gif"></soan></p>
                                </div>
                            </li>
                        
<?php } ?>

                </ul>
            </div>
            <div class="p"><? echo pagelist($total,$pagesize,$page,"");; ?></div>
        </div>
    </div>
    <div class="clear">
    </div>

    
<?php include template('footer'); ?>

</form>
</body>
</html>