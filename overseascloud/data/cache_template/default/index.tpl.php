<?php defined('ZZQSS') or exit('Access Denied'); ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $cfg_site_name;?> - 全球最大的华人代购网站 - 首页</title>
<meta name="keywords" content="<?php echo $cfg_site_keywords;?>" />

<meta name="description" content="<?php echo $cfg_site_description;?>" />

<link href="/favicon.ico" type="image/ico" rel="shortcut icon" />

<link type="text/css" rel="Stylesheet" href="/templates/default/css/index.css" />

<link href="/templates/default/css/top.css" rel="stylesheet" type="text/css" />

<link href="/templates/default/css/sy1.css" rel="stylesheet" type="text/css" />

<link href="/templates/default/css/sy2.css" rel="stylesheet" type="text/css" />

<link href="/templates/default/css/sy3.css" rel="stylesheet" type="text/css" />

<link type="text/css" rel="Stylesheet" href="/templates/default/css/sy4.css" />

<link type="text/css" rel="Stylesheet" href="/templates/default/css/sy5.css" />

<script src="/templates/default/js/xb/jquery-1.4.1.min.js" type="text/javascript"></script>

<script src="/templates/default/js/xb/jQuery.Extend.js" type="text/javascript"></script>

<script type="text/javascript" src="/templates/default/js/xb/jQuery.Drag.min.js"></script>

<script src="/templates/default/js/xb/jquery.cookies.2.1.0.min.js" type="text/javascript"></script>

<script src="/templates/default/js/xb/jquery-ui-1.8.11.min.js" type="text/javascript"></script>

<script type="text/javascript" language="javascript" src="/templates/default/js/xb/newindex.js"></script>

<script type="text/javascript" language="javascript" src="/templates/default/js/xb/banner.js"></script>

</head>

<body>





<?php include template('header'); ?>



   <div class="search_overlay" style="display: none;">

    </div>

    <div class="new-banner">

        <div class="new-banner-img">

            <ul class="bannerimg">

                <li class="bannerimg1">

                    <div class="bannerbg">

                        <div class="bannerkj">

                            <div class="banner1text">

                                <h1>                                </h1>

                                <h3>                                </h3>

                                <h4>                                </h4>

                            </div>

                           <div class="jt">                            </div>

                            </a><span>&nbsp;</span>                        </div>

                    </div>

                </li>

                <li class="bannerimg2">

                    <div class="bannerbg2">

                        <div class="bannertext2">

                            <span></span>

                            <dl>

                                <dd>

                                    <div class="jt">                                    </div>

                                    PayPal 信用卡多种支付 便捷更安全</dd>

                                <dd>

                                    <div class="jt">                                    </div>

                                    16小时订单处理 客服响应及时 完善的售后保障</dd>

                                <dd>

                                    <div class="jt">                                    </div>

                                    尽享商家折扣 DHL/Panli专线/EMS/AIR最低国际运费</dd>

                            </dl>

                        </div>

                        <div class="jt">                        </div>

                        </a>

                        <div class="people">                        </div>

                    </div>

                </li>

                

                <li class="bannerimg3" style="background:url(/templates/default/images/xb/bai.gif) center center"><div class="bannerbg3"><img alt="" src="/ad/03.png" /></div></li>

            </ul>

        </div>

    </div>

    <div class="loginmenu">

        <div class="login">

            <div class="logins">

                

                <div class="login-dl">

                    <a href="/user.php?action=register" target="_blank" class="enroll">免费注册</a>

                    <a href="/user.php?action=login" target="_blank" class="enter">登录</a>                </div>

                

                <div class="help-text  help-texts">                </div>

                <div class="help-text">

                    <h3 class="up">

                        网站公告</h3>

                    <h3 class="h3s">

                        帮助信息</h3>

                    <ul>

<?php if(is_array($newsarray)) foreach($newsarray AS $i => $r) { ?>

            <li><img src="/templates/default/images/xb/li-dian.gif" alt="" /><a <?php if($i<2) { ?>style="color:red"<?php } ?> href="<?php echo url("news.php?action=view&nid=$r[nid]"); ?>" title="<?php echo $r['title'];?>"><?php echo $r['title'];?></a></li>

<?php } ?>

          </ul>

      <ul style="display: none;">

<?php if(is_array($articlearray)) foreach($articlearray AS $r) { ?>    

    <li><img src="/templates/default/images/xb/li-dian.gif" alt="" /><a href="<?php echo url("help.php?action=view&id=$r[aid]"); ?>" title="<?php echo $r['title'];?>" style=""><?php echo $r['title'];?></a></li>

<?php } ?>				

          </ul>

                </div>

            </div>

            <div class="change">

                <h3>

                    <a href="/special.php">活动：</a></h3>

                <ul class="gg">

 <?php if(is_array($topcarray)) foreach($topcarray AS $r) { ?>

     <li><a href="<?php echo url("special.php?action=view&sid=$r[sid]"); ?>" title="<?php echo $r['title'];?>" style=""><?php echo $r['title'];?></a></li>	

<?php } ?>	

                </ul>

                <ul class="cutd">

                    <li class="li-up">&nbsp;</li>

                </ul>

            </div>

        </div>

    </div>





   <script src="<?php echo TPL;?>js/xb/jsized.snow.min.js" type="text/javascript"></script>

   

    <div class="zt">

        <div class="in-process" id="in-process">

            <div class="rightMenu" id="rightMenu">

                <div class="rightMenu2">

                    <a class="as kefu" href="/about.php?aid=1" target="_blank">&nbsp;</a>

                    <ul>

                        <li><a class="as as1" href="#" onclick="newpanli.so('pdg')" target="_self">正在拼</a></li>

                        <li><a class="as as2" href="#" onclick="newpanli.so('fxg')" target="_self">亲们喜欢</a></li>

                        <li><a class="as as4" href="#" onclick="newpanli.so('vipg')" target="_self">折扣信息</a></li>

                    </ul>

                    <a class="as top" id="top" href="#" onclick="newpanli.so(0)" target="_self">&nbsp;</a>

                </div>

            </div>





            <div class="in-process-left">

                <div class="topmenu">

                    <span>

                        <h3 id="pdg">

                            正在拼</h3>

                        /<em><?php echo $total;?>

                        </em>件</span><a href="/pinindex.php" class="ina" target="_blank">进入拼单</a>

                </div>

        <ul class="left">



 <?php if(is_array($datapinarray)) foreach($datapinarray AS $r) { ?> 

                    <li>

                        <div class="leftimgs">                        </div>

                        <div class="tupian">

                        <a href="<?php echo $r['goodsurl'];?>" onclick="window.open('<?php echo $r['goodsurl'];?>');return false;"><img alt="<?php echo $r['goodsname'];?>" src="<?php echo $r['orderimg'];?>" title="<?php echo $r['goodsname'];?>" onerror="this.src='/templates/default/images/xb/noimg220.gif';" /></a>

                        </div>

                        <a href="<?php echo $r['goodsurl'];?>" onclick="window.open('<?php echo $r['goodsurl'];?>');return false;"

                            target="_blank">

                            <h4>

                             <?php echo $r['goodsname'];?>

                            </h4>

                        </a><span>By：<?php echo $r['uname'];?></span>

                        <span>

                            <p>

                                ￥<?php echo $r['goodsprice'];?></p>

                            <a href="<?php echo url("pinindex.php?action=pay&oid=$r[oid]"); ?>" target="_blank">我要拼单</a>


                        </span></li>

<?php } ?>	

 </ul>

            </div>

            <div class="in-process-right">

                <h3>

                    大家都在买</h3>

                <span class="top">

                    <p>

                        <em class="num">1</em>/3</p>

                    <a class="in-left" href="javascript:void(0)">&nbsp;&nbsp;&nbsp;</a><a class="in-right"

                        href="javascript:void(0)">&nbsp;&nbsp;&nbsp;</a></span>

                <ul class="in-right-ul"></ul>

                <ul class="in-right-ul" style="display: none">



<?php if(is_array($datadajiaarray)) foreach($datadajiaarray AS $r) { ?>

           <li><div class="indj"><a href="<?php echo $r['goodsurl'];?>"><img alt="<?php echo $r['goodsname'];?>" src="<?php echo $r['goodsimg'];?>" title="<?php echo $r['goodsname'];?>" onerror="this.src='/templates/default/images/xb/noimg100.gif';" /></a></div>

            <span><span>￥<?php echo $r['goodsprice'];?></span><a onclick="FastAddShow('<?php echo $r['goodsurl'];?>')">我要购</a></span></li>

             <?php } ?>



                </ul>

                <ul class="in-right-ul" style="display: none"> 

<?php if(is_array($datadajiaaarray)) foreach($datadajiaaarray AS $r) { ?>

           <li><div class="indj"><a href="<?php echo $r['goodsurl'];?>"><img alt="<?php echo $r['goodsname'];?>" src="<?php echo $r['goodsimg'];?>" title="<?php echo $r['goodsname'];?>" onerror="this.src='/templates/default/images/xb/noimg100.gif';" /></a></div>

            <span><span>￥<?php echo $r['goodsprice'];?></span><a onclick="FastAddShow('<?php echo $r['goodsurl'];?>')">我要购</a></span></li>

             <?php } ?>

                </ul>

                <ul class="in-right-ul" style="display: none">    	

<?php if(is_array($datadajiaaaarray)) foreach($datadajiaaaarray AS $r) { ?>

           <li><div class="indj"><a href="<?php echo $r['goodsurl'];?>"><img alt="<?php echo $r['goodsname'];?>" src="<?php echo $r['goodsimg'];?>" title="<?php echo $r['goodsname'];?>" onerror="this.src='/templates/default/images/xb/noimg100.gif';" /></a></div>

            <span><span>￥<?php echo $r['goodsprice'];?></span><a onclick="FastAddShow('<?php echo $r['goodsurl'];?>')">我要购</a></span></li>

             <?php } ?>

                </ul>

            </div>

        </div>

        <div class="shadow">

        </div>

        <div class="in-process" id="aboutlike">

            <div class="in-process-left">

                <div class="topmenu">

                    <span>

                        <h3 id="fxg">

                            亲们喜欢</h3>

                        </span><a class="ina ina2" href="/fen.php">进入频道</a>

                </div>

                

                <ul class="left2">

                  <?php if(is_array($cptjarray)) foreach($cptjarray AS $r) { ?>    

                    <li>

                        <div class="tulove">

                            <a href="<?php echo url("fen.php?action=view&gid=$r[gid]"); ?>">

                                <img alt="<?php echo $r['goodsname'];?>" title="<?php echo $r['goodsname'];?>" src="<?php echo $r['goodsimg'];?>"

                                    onerror="this.src='/templates/default/images/xb/noimg220.gif';" />

                            </a>

                        </div>

 <? $gid=$r['gid'];



include_once(INC_PATH.'/table.class.php');



$likeobj=new TableClass('goodslike','lid');	



$pingobj=new TableClass('goodscomment','cid');						



$like_count=$likeobj->getcount("state = 1 and gid = '$gid'");



$ping_count=$pingobj->getcount("state = 1 and gid = '$gid'");



 ?><form method="POST" action="<?php echo url("fen.php?share_like=xihuanyixia"); ?>">

<input name="tao_id" value="<?php echo $r['gid'];?>" type="hidden" />

<span class="gl"><em>￥<?php echo $r['goodsprice'];?></em>

<a name="like_over" href="javascript:void();">喜欢</a></span></li>

<input name="NoLike" value="" type="hidden" /></form>	

              <?php } ?>



                </ul>

                

        <ul class="left-ul">

                    <li>

                        <span><h2><a href="<?php echo url("sharetao.php?gtypeid=1"); ?>">服装</a></h2><span><a href="<?php echo url("sharetao.php?gtypeid=8"); ?>">T恤</a><a href="<?php echo url("sharetao.php?gtypeid=9"); ?>">衬衫</a><a href="<?php echo url("sharetao.php?gtypeid=10"); ?>">连衣裙</a><a href="<?php echo url("sharetao.php?gtypeid=11"); ?>">外套</a><a href="<?php echo url("sharetao.php?gtypeid=12"); ?>">毛衣</a><a href="<?php echo url("sharetao.php?gtypeid=13"); ?>">牛仔裤</a></span></span>

                    </li>

                    <li>

                        <span><h2><a href="<?php echo url("sharetao.php?gtypeid=4"); ?>">饰品</a></h2><span><a href="<?php echo url("sharetao.php?gtypeid=42"); ?>">

                                        腰带</a>

                                   <a href="<?php echo url("sharetao.php?gtypeid=43"); ?>">

                                        手表</a>

                                   <a href="<?php echo url("sharetao.php?gtypeid=44"); ?>">

                                        手套</a>

                                   <a href="<?php echo url("sharetao.php?gtypeid=45"); ?>">

                                        眼镜</a>

                                   <a href="<?php echo url("sharetao.php?gtypeid=46"); ?>">

                                        披肩</a>

                                   <a href="<?php echo url("sharetao.php?gtypeid=47"); ?>">

                                        帽子</a></span></span>

                    </li>

                    <li>

                        <span><h2><a href="<?php echo url("sharetao.php?gtypeid=2"); ?>">鞋包</a></h2><span> <a href="<?php echo url("sharetao.php?gtypeid=20"); ?>">

                                        帆布鞋</a>

                                    <a href="<?php echo url("sharetao.php?gtypeid=21"); ?>">

                                        运动鞋</a>

                                    <a href="<?php echo url("sharetao.php?gtypeid=22"); ?>">

                                        单鞋</a>

                                    <a href="<?php echo url("sharetao.php?gtypeid=23"); ?>">

                                        凉鞋</a>

                                    <a href="<?php echo url("sharetao.php?gtypeid=24"); ?>">

                                        靴子</a>

                                    <a href="<?php echo url("sharetao.php?gtypeid=25"); ?>">

                                        休闲鞋</a></span></span>

                    </li>

                    <li>

                        <span><h2><a href="<?php echo url("sharetao.php?gtypeid=3"); ?>">美容</a></h2><span><a href="<?php echo url("sharetao.php?gtypeid=31"); ?>">

                                        洗面奶</a>

                                    <a href="<?php echo url("sharetao.php?gtypeid=32"); ?>">

                                        面膜</a>

                                    <a href="<?php echo url("sharetao.php?gtypeid=33"); ?>">

                                        防晒</a>

                                    <a href="<?php echo url("sharetao.php?gtypeid=34"); ?>">

                                        眼影</a>

                                    <a href="<?php echo url("sharetao.php?gtypeid=35"); ?>">

                                        睫毛膏</a>

                                    <a href="<?php echo url("sharetao.php?gtypeid=36"); ?>">

                                        BB霜</a></span></span>

                    </li>

                </ul>

            </div>

            <div class="in-process-right right-span">

                <h3>

                    推荐活动</h3>

                <a class="in-more" href="/huo.php" target="_blank">更多&gt;&gt;</a>

<?php if(is_array($specialarray1)) foreach($specialarray1 AS $r) { ?>

                <a href="<?php echo url("huo.php?action=view&sid=$r[sid]"); ?>"><img alt="<?php echo $r['title'];?>" title="<?php echo $r['title'];?>" src="<?php echo $r['pic'];?>" width="215" height="110"/></a><span><a href="<?php echo url("huo.php?action=view&sid=$r[sid]"); ?>"><?php echo $r['title'];?></a></span>

               <?php } ?>

<dl>

</dl>

            </div>

        </div>

        <div class="shadow">

        </div>

        <div class="in-process" id="vips">

            <div class="in-process-left">

                <div class="topmenu">

                    <span>

                        <h3 id="vipg">

                            商家折扣信息</h3>

                       <a class="ina ina4" href="/zhe.php"> 进入频道</a>

                </div>

                <ul id="vipshopslist">

                

<?php if(is_array($discountarray)) foreach($discountarray AS $r) { ?>

   <li name="<?php echo $r['did'];?>">

  <a class="vipimg" href="<?php echo url("zhe.php?action=view&did=$r[did]"); ?>">

 <img src="<?php echo $r['pic'];?>" alt="<?php echo $r['title'];?>" width="202px" height="82px" onerror="this.src='<?php echo TPL;?>images/xb/noimg220.gif';">

 </a>



 <span><a href="<?php echo url("zhe.php?action=view&did=$r[did]"); ?>" class="left">

        <?php echo $r['title'];?></a>

 <a href="javascript:void(0);" class="right"><?php echo $r['discounttime'];?></a>

                        </span>

                        <div class="p">

                            <p><?php echo substrs($r['body'],95);?></p>

<p>&nbsp;&nbsp;</p>

<div class="bottombgs">

                            </div>

                        </div>

                    </li>

<?php } ?>

 </ul>

               <input type="hidden" value="#67b023" id="hidLevelColor" />

            </div>

            <div class="in-process-right">

                <div class="idea-top">

                    <h3>

                        最新评价</h3>

                    <a href="/comments.php" target="_blank">更多>></a></div>

                <ul>

  <?php if(is_array($dataarray)) foreach($dataarray AS $r) { ?>	

        <li>

  <img alt="<?php echo $r['uname'];?>" src="<?php echo TPL;?>images/untitled.jpg" width="55px" height="55px" onerror="this.src='<?php echo TPL;?>images/untitled.jpg';" />

         <p>

<?php echo $r['uname'];?>&nbsp;<?php echo date("m-d",$r['commenttime']);?>日评,

     <em>

       <?php echo substrs($r['comment'],24,1,1);?></em> 

        <span></span>

          </p>

           </li>

         <?php } ?>	

  

                </ul> 

            </div>

        </div>

        <div class="shadow" style="margin-bottom: 8px;">

        </div>

    </div>



 <?php include template('footer'); ?>

<script type="text/javascript" src="<?php echo TPL;?>js/indexSlide.js"></script>

<script type="text/javascript">

    $(function() {



        var e = function(n, b) {



            if (n.length > b) {



                return n.substring(0, b - 2) + "...";



            }



            return n;



        };		







        $.getJSON("/ajax/index_ajax.php?action=maqueeproduct&r=" + Math.random(),



        function(n) {



            var b = $("<ul></ul>");



            $("#Slider").empty().append(b);



            $.each(n,



            function(o, p) {



                b.append('<li><div class="detailed"><div class="pic"><a href="<?php echo url("see.php?type="); ?>' + p.c + "#" + p.id + '"><img width=80 height=80 alt="' + p.n + '" src="' + p.p + '" /></a></div><div class="info"><h2><a href="<?php echo url("see.php?type="); ?>' + p.c + "#" + p.id + '">' + e(p.n, 40) + "</a></h2><dl><dd><b>￥" + p.m + "</b><span>" + p.d + '</span></dd><dd class="i_bj">代购信息：' + p.un + "购买于" + p.s + '</dd></dl></div></div><div class="concise"><p><a href="<?php echo url("see.php?type="); ?>' + p.c + "#" + p.id + '">' + e(p.n, 25) + "</a></p><span>" + p.d + "</span></div></li>");



            }); (function(v, x) {



                var w = true;



                var u = b;



                var o = 0;



                var p;



                var t = 1;



                var y = u.find(".concise:eq(0)").outerHeight();



                u.scrollTop(0);



                u.children().each(function() {



                    o += $(this).outerHeight();



                });



                u.append(u.html());



                var q = u.find("li:eq(1)");



                $(q).find(".detailed").show();



                $(q).find(".concise").hide();



                var z = function() {



                    var s = u.scrollTop();



                    if (s >= o) {



                        q = u.find("li:eq(0)");



                        u.find(".detailed").hide();



                        $(q).find(".detailed").show();



                        $(q).find(".concise").hide();



                    }



                    u.scrollTop((s >= o ? 0 : s) + t);



                    if (u.scrollTop() % y == 0) {



                        r();



                    }



                };



                function r() {



                    t = 0;



                    if (w) {



                        setTimeout(function() {



                            $(q).find(".concise").show();



                            q = $(q).next("li:first");



                            if (!q) {



                                q = u.find("li:first");



                            }



                            u.find(".detailed").hide();



                            $(q).find(".detailed").show();



                            $(q).find(".concise").hide();



                            w = true;



                            t = 1;



                        },



                        x);



                    }



                    w = false;



                }



                u.find("li").mouseover(function() {



                    u.find(".detailed").hide();



                    $(this).find(".detailed").show();



                    $(this).find(".concise").hide();



                    clearInterval(p);



                });



                u.find("li").mouseout(function() {



                    u.find(".detailed").hide();



                    $(this).find(".concise").show();



                    $(q).find(".detailed").show();



                    $(q).find(".concise").hide();



                    p = setInterval(z, v);



                });



                p = setInterval(z, v);



            })(30, 3000);



        });



    });



</script>	



</body>

</html>

