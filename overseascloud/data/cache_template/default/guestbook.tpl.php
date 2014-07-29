<?php defined('ZZQSS') or exit('Access Denied'); ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href="<?php echo TPL;?>css/NewTopFoot.css" rel="Stylesheet" type="text/css">

<link type="text/css" rel="stylesheet" href="<?php echo TPL;?>css/AddItemPanel.css">

<script src="<?php echo TPL;?>js/jquery-1.4.1.min.js" type="text/javascript"></script>

<script type="text/javascript" src="<?php echo TPL;?>js/Gobal.js"> </script>

<link href="<?php echo TPL;?>css/see.css" rel="Stylesheet" type="text/css">

<title>用户评价- <?php echo $cfg_site_name;?></title>

<style type="text/css">

.pages {float:right;height:25px;display:inline;}

.pages li{list-style-type: none;}

.pages  a{text-decoration:none;}

.pages li{

border:1px solid #AAAAAA;color:#666666;display:inline;float:left;height:20px;line-height:20px;margin-left:2px;padding:0 5px;text-decoration:none;}

.pages li {border:1px solid #DDDDDD;color:#CCC;font-family:"simsun";}

.pages li:hover {background:#FFEDE1;border:1px solid #FF9900;}

.pages .current {background:#FFEDE1;border:1px solid #FF6600;color:#FF0000;}

.pages em {color:#999999;display:inline;float:left;height:22px;line-height:22px;margin-left:5px;}

</style>

</head>



<body>

<?php include template('header'); ?>



<div class="see mt0">

  <div class="see_main_left mar_right_10">

    <div class="deals">

      <div class="top fudong"><img src="<?php echo TPL;?>images/bg_scodtop.png" width="670" height="8" /></div>

      <div class="mid">

        <div class="gbt_line">用户评价

        </div>

        <div class="sect">

          <div class="daelog">

            <ul>

<?php if(is_array($dataarray)) foreach($dataarray AS $r) { ?>

              <a name="<?php echo $r['sid'];?>" id="<?php echo $r['sid'];?>"></a>

              <li>

                <div class="l"><img src="<?php echo $r['face'];?>" onerror="this.src='<?php echo TPL;?>images/untitled.jpg'"/></div>

                <div class="r"> 

                  <div class="huifu" style="height:23px"><h5 style="float:left; width:200px"><?php echo $r['uname'];?></h5> <span><?php echo date("Y-m-d",$r['commenttime']);?> 发表 </span></div>

                  <b>包裹单号:</b><span class="zi_hui"><a href="###"><?php echo $r['sn'];?></a></span><?php echo $r['deliveryname'];?> ， 寄达国：<?php echo $r['country'];?> <br />

                  <p><?php echo $r['comment'];?>  </p>

                  <b>回复：</b><span class="hong"><?php echo $r['reply'];?> </span><br />

                </div>

              </li>

  <?php } ?>

              <li></li>

            </ul>

          </div>

        

        <? echo pagelist($total,$pagesize,$page,"");; ?>        </div>

      </div>

      <div class="bom"><img src="<?php echo TPL;?>images/bg_scodbom.png" /></div>

    </div>

  </div>

  

  

  

    <div class="see_left">

      <div class="pltj">

        <div class="lm">

          <h2 class="tit_dian_h2">分享推荐</h2>

          <span><a href="<?php echo url("fen.php"); ?>">更多..</a> </span> </div>

        <ul>




    <?php if(is_array($cptjarray)) foreach($cptjarray AS $r) { ?>    
          <li>

            <dl>

              <dt><a href="<?php echo url("fen.php?action=view&gid=$r[gid]"); ?>"> <img alt="<?php echo $r['goodsname'];?>" src="<?php echo $r['goodsimg'];?>"></a></dt>

              <dd>

        <h1> <a href="<?php echo url("fen.php?action=view&gid=$r[gid]"); ?>"> <?php echo substrs($r['goodsname'],50);?></a></h1>

                <p> 价格：<span> ￥<?php echo $r['goodsprice'];?></span></p>

                <div> 来源：<a target="_blank" href="<?php echo $r['sellerurl'];?>"><?php echo $r['goodsseller'];?></a></div>

                <b><a href="<?php echo $r['sellerurl'];?>">[<?php echo $r['shopname'];?>]</a></b> </dd>

            </dl>

          </li>
<?php } ?>

  

  



        </ul>

      </div>

      <div class="see_zk" style="">

        <div class="lm">

         <h2 class="tit_dian_h2"> 折扣信息</h2>

          <span><a href="<?php echo url("zhe.php"); ?>">更多..</a></span></div>

        <ul>

<?php if(is_array($discountarray)) foreach($discountarray AS $r) { ?>

          <li>

            <h3><a href="<?php echo url("zhe.php?action=view&did=$r[did]"); ?>"><?php echo $r['title'];?></a></h3>

            <p><?php echo $r['about'];?><a href="<?php echo url("zhe.php?action=view&did=$r[did]"); ?>">详细&gt;&gt;</a></p>

          </li>

<?php } ?>



        </ul>

      </div>

  </div>

</div>



<?php include template('footer'); ?>

</body>

</html>

