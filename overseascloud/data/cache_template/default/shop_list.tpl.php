<?php defined('ZZQSS') or exit('Access Denied'); ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="代购,免邮商品,中国代购,免邮,淘宝代购" />
<meta name="description" content="免邮商品！" />
<link href="<?php echo TPL;?>css/AddItemPanel.css" rel="stylesheet" type="text/css" />
<script src="<?php echo TPL;?>js/jquery-1.4.1.min.js" type="text/javascript"></script>
<script src="<?php echo TPL;?>js/jQuery.Extend.js" type="text/javascript"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/jQuery.Drag.min.js"></script>
<link type="text/css" rel="stylesheet" href="<?php echo TPL;?>css/List.css">
<script src="<?php echo TPL;?>js/jquery.cookies.2.1.0.min.js" type="text/javascript"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/jquery.json-1.3.min.js"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/Gobal.js"></script>
<link href="<?php echo TPL;?>css/piece.css" rel="stylesheet" type="text/css" />
<link href="<?php echo TPL;?>css/quicklogin.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<?php echo TPL;?>js/Piece.js"></script>

<title>
[<?php echo $cfg_site_name;?>]-免邮商品，免国内运费
</title>
<style type="text/css">
.position span{float:none}
.pages {float:right;height:25px;margin:0px 10px 0px 0px;display:inline;overflow:hidden}
.pages li{list-style-type: none;}
.pages  a{text-decoration:none;}
.pages li{
border:1px solid #AAAAAA;color:#666666;display:inline;float:left;height:20px;line-height:20px;margin-left:2px;padding:0 5px;text-decoration:none;}
.pages li {border:1px solid #DDDDDD;color:#CCC;font-family:"simsun";}
.pages li:hover {background:#FFEDE1;border:1px solid #FF9900;}
.pages .current {background:#FFEDE1;border:1px solid #FF6600;color:#FF0000;}
.pages em {color:#999999;display:inline;float:left;height:22px;line-height:22px;margin-left:5px;}
</style>
    <script type="text/javascript">
        var cate="<?php echo $typename;?>",subcate="";
        $(document).ready(function() {
            var cateList = $(".caidan h3");
            cateList.children("a[title=" + cate + "]").parent("h3").addClass("t");
            if (subcate != "")
                $(".caidan li:contains('" + subcate + "')").addClass("x");
            var data = $.evalJSON(jaaulde.utils.cookies.get("shopscan"));
            if (data != null) {
                $.each(data, function(index, item) {
                    $("#scan").append("<li><a href='shop.php?action=view&gid=" + item["id"] + "'><img src='" + item["pimg"] + "' alt='" + item["n"] + "'  /></a></li>");
                });
            }
        });
    </script>
</head>
<body>
    <form name="" method="post" action="" id="">

<?php include template('header'); ?>

<div class="piece_top"></div>
<div class="piece">
        <div class="leftpan">
 <div class="leftpan_con">
            <div class="possible">
        <h2 class="tit_new_h2 h45">可拼单的宝贝</h2>
                <div class="search">
                    <div class="select">
            <input id="categoryID" onfocus="this.blur();" onmouseout="this.className='';" onmouseover="this.className='bian';"
                            onclick="$('#categoryList').show()" readonly="readonly" type="text" value="所有分类"  categoryid="-1" />
        <div onclick="this.style.display='none';" class="sort" id="categoryList" style="display: none;">


<a onclick="$('#categoryID').val('所有分类').attr('categoryid','0');" href="javascript:;"> 所有分类</a>

<?php if(is_array($listarr)) foreach($listarr AS $r) { ?>
<a onclick="$('#categoryID').val('<?php echo $r['typename'];?>').attr('categoryid','<?php echo $r['typeid'];?>');" href="javascript:;"> <?php echo $r['pre'];?><?php echo $r['typename'];?></a>
<?php } ?>

</div>
                    </div>
                    <input class="text" id="searchKeyword" onfocus="searchFocus()"
                        onblur="searchBlur()" name="" type="text" value="请输入商品名.." /><input
                            class="go" name="" onmouseover="this.className='go_'" onmouseout="this.className='go'"
                            onclick="searchPiece()" type="button" value="搜索" />
                </div>
                <ul class="tiao">
                    <li><b>每页显示：</b></li>
                    <li><a <?php if($ps==9) { ?>class="yellow"<?php } ?> href="shop.php?action=list&tid=<?php echo $tid;?>&ps=9">9</a></li>
                    <li><a <?php if($ps==12) { ?>class="yellow"<?php } ?>  href="shop.php?action=list&tid=<?php echo $tid;?>&ps=12">12</a></li>
                    <li><a <?php if($ps==24) { ?>class="yellow"<?php } ?> href="shop.php?action=list&tid=<?php echo $tid;?>&ps=24">24</a></li>

                </ul>
            </div>
            <div class="merchandise">
                
                <div class="remen ">

                   <div class="position">
                <p>
                    <b>当前位置：</b><a href="<?php echo url("recommend.php"); ?>">编辑推荐</a><?php echo $position;?></p>
            </div>


                    <dl>
                        <dd></dd>
                    </dl>
                    
                    <span>
!Total!：<?php echo $total;?> 件商品
                  </span>

                </div>
                
        <ul>


<?php if(is_array($dataarray)) foreach($dataarray AS $r) { ?>

          <li>
            <div class="pic"> <a href="<?php echo url("shop.php?action=view&gid=$r[gid]"); ?>" target="_blank"> <img src="<?php echo $r['goodsimg'];?>"
                                            alt="<?php echo $r['goodsname'];?>" onerror="this.src='<?php echo TPL;?>images/noimg220.gif';" /></a> </div>
            <div class="summary">
              <h1> <a href="<?php echo url("shop.php?action=view&gid=$r[gid]"); ?>" target="_blank" title="<?php echo $r['goodsname'];?>"> <?php echo $r['goodsname'];?></a></h1>
              <p> ￥<?php echo $r['goodsprice'];?></p>
              <div class="pd"><a href="###" onclick="FastAddShow('<?php echo url("$site_url/shop.php?action=view&gid=$r[gid]"); ?>')">我要代购</a><a href="<?php echo url("shop.php?action=view&gid=$r[gid]"); ?>" target="_blank">查看详情</a></div>
              <dl>
                <dd> 代购数：<span class="say"><?php echo $r['buynum'];?>次</span></dd>
                <dd> 浏览次数：<span class="say"><?php echo $r['views'];?>次</span></dd>
              </dl>
            </div>
          </li>
<?php } ?>
  
        </ul>
            </div>
      <div class="yj">
  <? echo pagelist($total,$pagesize,$page,"");; ?>      </div>
  </div>
        </div>


    <div class="right">
      <div class="zuo">
        <div class="lm boder"><h2 class="tit_jiantou_h2 h45">热门商品分类</h2></div>
        <div class="caidan" style=" border-color:#DFDFDF;">

<?php if(is_array($listarr)) foreach($listarr AS $key => $r) { ?>
<?php if($r['node']==0) { ?>
          <h3 > <a title="<?php echo $r['typename'];?>" href="<?php echo url("shop.php?action=list&tid=$r[typeid]"); ?>"> <b> <?php echo $r['typename'];?></b><span></span></a></h3>
          <ul>

<?php if(is_array($listarr)) foreach($listarr AS $v) { ?>
<?php if($v['node']==$r['typeid']) { ?>
            <li><a href="<?php echo url("shop.php?action=list&tid=$v[typeid]"); ?>"> <?php echo $v['typename'];?></a></li>
<?php } ?>
<?php } ?>
          </ul>
<?php } ?>
<?php } ?>

        </div>


      </div>
      <div class="bz left">
        <div class="tit_jiantou2_h2 h45"> 热拼宝贝</div>
        <div class="bang">
          <div class="qh">
            <ul>
              <li class="on"><a onclick="mutiDiv(0)">代购排行</a></li>
              <li><a onclick="mutiDiv(1)">点击排行</a></li>
            </ul>
          </div>
          <div id="point" class="jifen">
<?php if(is_array($leftarray)) foreach($leftarray AS $key => $r) { ?>  
            <dl>
              <dt style="display: none;">
                <div class="img">
<a href="<?php echo url("shop.php?action=view&gid=$r[gid]"); ?>" target="_blank">
<img src="<?php echo $r['goodsimg'];?>" alt="<?php echo $r['goodsname'];?>" /></a> </div>
                <div class="xiangxi">
                  <h1> <i> <? echo $key+1; ?>.</i><a title="<?php echo $r['goodsname'];?>" href="<?php echo url("shop.php?action=view&gid=$r[gid]"); ?>" target="_blank"><?php echo substrs($r['goodsname'],35);?>..</a></h1>
                  <label> ￥<?php echo $r['goodsprice'];?></label>
                  <p> 代购数：<i><?php echo $r['buynum'];?>次</i></p>
                </div>
              </dt>
              <dd onmouseover="showHotProInfo(this)">
<?php if($key<3) { ?>
<span><? echo $key+1; ?></span>
<?php } else { ?>
<b><? echo $key+1; ?></b>
<?php } ?>
                <p> <a href="<?php echo url("shop.php?action=view&gid=$r[gid]"); ?>" target="_blank"> <?php echo $r['goodsname'];?></a></p>
              </dd>
            </dl>
<?php } ?>

          </div>
          <div id="pieceNum" class="jifen" style="display: none;">
  
<?php if(is_array($rightarray)) foreach($rightarray AS $key => $r) { ?>  
            <dl>
              <dt style="display: none;">
                <div class="img">
<a href="<?php echo url("shop.php?action=view&gid=$r[gid]"); ?>" target="_blank">
<img src="<?php echo $r['goodsimg'];?>" alt="<?php echo $r['goodsname'];?>" /></a> </div>
                <div class="xiangxi">
                  <h1> <i> <? echo $key+1; ?>.</i><a title="<?php echo $r['goodsname'];?>" href="<?php echo url("shop.php?action=view&gid=$r[gid]"); ?>" target="_blank"><?php echo substrs($r['goodsname'],35);?>..</a></h1>
                  <label> ￥<?php echo $r['goodsprice'];?></label>
                  <p> 代购数：<i><?php echo $r['buynum'];?>次</i></p>
                </div>
              </dt>
              <dd onmouseover="showHotProInfo(this)">
<?php if($key<3) { ?>
<span><? echo $key+1; ?></span>
<?php } else { ?>
<b><? echo $key+1; ?></b>
<?php } ?>
                <p> <a href="<?php echo url("shop.php?action=view&gid=$r[gid]"); ?>" target="_blank"> <?php echo $r['goodsname'];?></a></p>
              </dd>
            </dl>
<?php } ?>

          </div>
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

