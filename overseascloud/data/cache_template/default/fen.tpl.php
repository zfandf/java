<?php defined('ZZQSS') or exit('Access Denied'); ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>分享购 - 分享您喜欢的宝贝给大家 - <?php echo $cfg_site_name;?></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta content="商品推荐,代购,女装,服饰,护肤,食品" name="keywords">
<meta content="国内的流行趋势是什么？网友都喜欢代购什么？时尚女装、服饰、美容护肤、中国美味食品一为您推荐" name="description">
<link href="/favicon.ico" type="image/ico" rel="shortcut icon" />
<link type="text/css" rel="Stylesheet" href="/templates/default/css/index.css" />
<link href="/templates/default/css/top.css" rel="stylesheet" type="text/css" />
<link href="/templates/default/css/sy1.css" rel="stylesheet" type="text/css" />
<link href="/templates/default/css/sy2.css" rel="stylesheet" type="text/css" />
<link href="/templates/default/css/sy3.css" rel="stylesheet" type="text/css" />
<link type="text/css" rel="Stylesheet" href="/templates/default/css/sy4.css" />
<link type="text/css" rel="Stylesheet" href="/templates/default/css/sy5.css" />
<link type="text/css" rel="Stylesheet" href="/templates/default/css/fen.css" />	
<script src="/templates/default/js/xb/jquery-1.4.1.min.js" type="text/javascript"></script>
<script src="/templates/default/js/xb/jQuery.Extend.js" type="text/javascript"></script>
<script src="/templates/default/js/xb/jquery-ui-1.8.11.min.js" type="text/javascript"></script>		
<script type="text/javascript" src="/templates/default/js/xb/default.js"></script>
</head>
<body>
 
 <?php include template('header'); ?>
        
    <div class="baobei">
        <div class="b_banner">
            <dl>
                <dt>暗爽、偷着乐，不告诉别人</dt>
                <dd>
                    <a href="<?php echo url("m.php?name=recommend"); ?>">立即分享我的宝贝</a></dd>
            </dl>
            <ul>
                <li><a href="<?php echo url("m.php?name=recommend"); ?>">亲！发现给力宝贝记得要“喜欢”啊！</a></li>
                
            </ul>
        </div>
        <div class="bb_center">
            <div class="bb_left">
                <div class="bb_lm">
                    <h2>
                        推荐分享</h2>
                    <div class="xiangdao">
                        <ul id="SlideTriggers">
                            <li><a href="javascript:void(0);">宝贝分享1</a></li>
                            <li><a href="javascript:void(0);">宝贝分享2</a></li>
                            <li><a href="javascript:void(0);">宝贝分享3</a></li>
                            <li><a href="javascript:void(0);">宝贝分享4</a></li>
                            <li><a href="javascript:void(0);">宝贝分享5</a></li>
                        </ul>
                    </div>
                </div>
                <div class="bb_you">
                    <div class="bb_show">
                        <div class="show_l">
                            <a href="#" title="向左" id="leftbtn"></a>
                        </div>
             <div class="show_box" id="slidePanel">
             <ul id="marqueePic">
            <?php if(is_array($dataarray)) foreach($dataarray AS $r) { ?>     
             <li>
            <div class="bb_pic">
           <a href="<?php echo url("fen.php?action=view&gid=$r[gid]"); ?>">
          <img src="<?php echo $r['goodsimg'];?>" width="216" height="218" onerror="this.src='/templates/default/images/xb/noimg220.gif'" alt="<?php echo $_USERS['showname'];?>" /></a></div>
          <div class="bb_js">
         <div class="bb_pj">
         <p>
         <img src="/templates/default/images/xb/yinhao1.gif" alt="“" /><?php echo substrs($r['about'],165);?>...<a href="<?php echo url("fen.php?action=view&gid=$r[gid]"); ?>">[查看全文]</a><img src="/templates/default/images/xb/yinhao2.gif" alt="”" /></p>
  <strong>------&nbsp;<?php echo $r['uname'];?>&nbsp;&nbsp;<? echo date('Y-m-d H:i:s',$r['addtime']); ?></strong>
             </div>
            <div class="bb_sp">
              <h1><a href="<?php echo url("fen.php?action=view&gid=$r[gid]"); ?>"><?php echo $r['goodsname'];?></a></h1>
              <div class="shequ youzhi">
                <dl>

                    <? $gid=$r['gid'];

include_once(INC_PATH.'/table.class.php');

$likeobj=new TableClass('goodslike','lid');	

$pingobj=new TableClass('goodscomment','cid');						

$like_count=$likeobj->getcount("state = 1 and gid = '$gid'");

$ping_count=$pingobj->getcount("state = 1 and gid = '$gid'");

 ?><form method="POST" action="<?php echo url("fen.php?share_like=xihuanyixia"); ?>">
<input name="tao_id" value="<?php echo $r['gid'];?>" type="hidden" />
   <dt><a name="like_over" href="javascript:void();">喜欢(<span><?php echo $like_count;?></span>)</a></dt>
            <dt class="tl"><a href="<?php echo url("fen.php?action=view&gid=$r[gid]"); ?>">评论(<span><?php echo $ping_count;?></span>)</a></dt>
<dd><img alt="<?php echo $r['goodsname'];?>" src="<?php echo TPL;?>images/xb/fen/x<?php echo $r['rindex'];?>.gif" /></dd>
<input name="NoLike" value="" type="hidden" /></form>
              </dl>
                  </div>
                     </div>
                        </div>
                         </li>
                           	<?php } ?>     
                            
                                
                            </ul>
                        </div>
                        <div class="show_r">
                            <a href="#" title="向右" id="rightbtn"></a>
                        </div>
                    </div>
                    <div class="ad"><a href="/" target="_blank"><img src="http://img.panli.com/CMS/bianjiImage/cImg/634520336144312434.jpg" alt="推荐有礼！邀请好友送积分" /></a></div>
                    
                </div>

                <div class="bb_lm">
                    <h2>
                        宝贝分类</h2>
                    <div class="more_fx">
                    </div>
                </div>
                <div class="bb_comment">
                    <div class="spfl">
                        <div class="kind">
                            <i class="b1">服装</i>
                            <div class="kind_x">
                                <h1>
                                    <a href="<?php echo url("sharetao.php?gtypeid=1"); ?>">服装</a></h1>
                                <ul>
                                    
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=8"); ?>">
                                        T恤</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=9"); ?>">
                                        衬衫</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=10"); ?>">
                                        连衣裙</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=11"); ?>">
                                        外套</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=12"); ?>">
                                        毛衣</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=13"); ?>">
                                        牛仔裤</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=14"); ?>">
                                        短裤</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=15"); ?>">
                                        内裤</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=16"); ?>">
                                        半身裙</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=17"); ?>">
                                        打底裤</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=18"); ?>">
                                        打底衫</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=19"); ?>">
                                        西装</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="kind">
                            <i class="b2">饰品</i>
                            <div class="kind_x">
                                <h1>
                                    <a href="<?php echo url("sharetao.php?gtypeid=4"); ?>">饰品</a></h1>
                                <ul>
                                    
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=42"); ?>">
                                        腰带</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=43"); ?>">
                                        手表</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=44"); ?>">
                                        手套</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=45"); ?>">
                                        眼镜</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=46"); ?>">
                                        披肩</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=47"); ?>">
                                        帽子</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=48"); ?>">
                                        领带</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=49"); ?>">
                                        项链</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=50"); ?>">
                                        发饰</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=51"); ?>">
                                        耳饰</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=52"); ?>">
                                        戒指</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=53"); ?>">
                                        手链</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="kind">
                            <i class="b3">鞋包</i>
                            <div class="kind_x">
                                <h1>
                                    <a href="<?php echo url("sharetao.php?gtypeid=2"); ?>">鞋包</a></h1>
                                <ul>
                                    
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=20"); ?>">
                                        帆布鞋</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=21"); ?>">
                                        运动鞋</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=22"); ?>">
                                        单鞋</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=23"); ?>">
                                        凉鞋</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=24"); ?>">
                                        靴子</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=25"); ?>">
                                        休闲鞋</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=26"); ?>">
                                        单肩</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=27"); ?>">
                                        斜挎</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=28"); ?>">
                                        双肩</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=29"); ?>">
                                        钱包</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=30"); ?>">
                                        拖鞋</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="kind">
                            <i class="b4">居家</i>
                            <div class="kind_x">
                                <h1>
                                    <a href="<?php echo url("sharetao.php?gtypeid=5"); ?>">居家</a></h1>
                                <ul>
                                    
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=54"); ?>">
                                        清洁</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=55"); ?>">
                                        文具</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=56"); ?>">
                                        靠垫</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=57"); ?>">
                                        毛巾</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=58"); ?>">
                                        布艺</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=59"); ?>">
                                        贴饰</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="kind">
                            <i class="b5">美容</i>
                            <div class="kind_x">
                                <h1>
                                    <a href="<?php echo url("sharetao.php?gtypeid=3"); ?>">美容</a></h1>
                                <ul>
                                    
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=31"); ?>">
                                        洗面奶</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=32"); ?>">
                                        面膜</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=33"); ?>">
                                        防晒</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=34"); ?>">
                                        眼影</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=35"); ?>">
                                        睫毛膏</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=36"); ?>">
                                        BB霜</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=37"); ?>">
                                        粉底</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=38"); ?>">
                                        遮瑕</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=39"); ?>">
                                        唇彩</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=40"); ?>">
                                        指甲油</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=41"); ?>">
                                        减肥</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="kind">
                            <i class="b6">食品</i>
                            <div class="kind_x">
                                <h1>
                                    <a href="<?php echo url("sharetao.php?gtypeid=6"); ?>">食品</a></h1>
                                <ul>
                                    
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=60"); ?>">
                                        巧克力</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=61"); ?>">
                                        饼干</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=62"); ?>">
                                        糖果</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=63"); ?>">
                                        肉脯</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=64"); ?>">
                                        花草茶</a></li>
                                    <li><a href="<?php echo url("sharetao.php?gtypeid=65"); ?>">
                                        冲饮品</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="bb_move">
                        <a href="/sharetao.php">查看全部分享</a>
                    </div>
                </div>
            </div>
            
<div class="bb_right">
    <div class="bb_lm">
        <h2>
            分享记录</h2>
        <span></span>
    </div>
    <div class="fx_tongji">
        <ul>
            <li>参与宝贝分享<span><?php echo $totall;?></span>人次</li>
            <li>累积宝贝分享<span><?php echo $total;?></span>件</li>
        </ul>
        <div class="fx_nav">
            <a href="<?php echo url("m.php?name=recommend"); ?>">立即分享我的宝贝</a>
        </div>
    </div>
    <div class="bb_lm">
        <h2>
            网站公告</h2>
        <span></span>
    </div>
    <div class="fx_tieshi">
        <ul>
<?php if(is_array($newsarray)) foreach($newsarray AS $i => $r) { ?>
<li><a href="<?php echo url("news.php?action=view&nid=$r[nid]"); ?>" title="<?php echo $r['title'];?>"><?php echo $r['title'];?></a></li>
<?php } ?>
</ul>
    </div>
    
    <div class="bb_lm">
        <h2>
            新鲜分享</h2>
        <span></span>
    </div>
    <div class="fx_new">
        <ul>
         <?php if(is_array($rightarray)) foreach($rightarray AS $r) { ?>   
            <li>
                <div class="fx_ren">
                    <h2>
                        <?php echo $r['uname'];?>@&nbsp;<? echo date('m-d',$r['addtime']); ?>日分享</h2>
                </div>
                <div class="fx_x">
                    <div class="rm_pic">
                        <a href="<?php echo url("fen.php?action=view&gid=$r[gid]"); ?>">
                            <img src="<?php echo $r['goodsimg'];?>" alt="<?php echo $r['goodsname'];?>" onerror="this.src='/templates/default/images/xb/noimg80.gif'" /></a>
                    </div>
                    <div class="new_info">
                        <h2>
                            <a href="<?php echo url("fen.php?action=view&gid=$r[gid]"); ?>">
                              <?php echo $r['goodsname'];?>...</a></h2>
                    </div>
                </div>
            </li>
          <?php } ?>  
           
            
        </ul>
    </div>
    
</div>

 <div style="clear: both">
            </div>
        </div>
    </div>

    <?php include template('footer'); ?>


<script type="text/javascript" src="<?php echo TPL;?>js/sharetao/jquery.form.js"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/sharetao/JqueryAjax.js"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/sharetao/common.js"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/sharetao/jquery.lazyload.js"></script>
<script type="text/javascript">
$(function(){

//图片延迟加载*fuxiaochun.com*/       

    	$(".st_sht_pic img,.like_hf_user dt img").lazyload({

placeholder : "/Images/sharetao/grey.gif",

            effect:"fadeIn",

failurelimit : 20

         })

//关闭提示

$(".close").click(function(){

$(this).parent("div").hide();

});

 var w=$(".st_sht_pic img").width();

     var h=$(".st_sht_pic img").height();

     var x=(w*178)/h;

     $(".st_sht_pic img").css({"width":"178px","height":"x"})		

$(".st_like_btn").click(function(){

$(this).parents("form").submit();

});

$("[name=like_over]").click(function(){

$(this).parent().fadeOut();

$(this).parent().next("[name=NoLike]").val("shanchu");

$(this).parents("form").submit();

});

$(".lp_close").click(function(){

$(this).parent(".like_pinglun").fadeOut();

});

$("[name=search]").focus(function(){

if($(this).val()=="搜宝贝、找人"){

$(this).val("");

}	

});

$("[name=search]").blur(function(){

if($(this).val()==""){

$(this).val("搜宝贝、找人");	

}	

});

$("[name=lp_close]").click(function(){

$(this).parents(".like_pinglun").fadeIn();

});

$("[name=btnPinlun]").click(function(){

if($(this).parent().parent().find("textarea").val()==""){

alert("请输入评论内容");

return false;

}

$(this).parents("form").submit();

});



//快速评论

$(".plks").click(function(){

$(this).parent().parent().parent().next().find(".ksplbox").toggle();				  

})

$(".kspl_bq").click(function(){

//alert($(this).find(".biaoqing2"));

//$(this).parent(".kspl_bqbox").find(".biaoqing2").css("display","block");

//alert($(this).parent(".kspl_bqbox").find(".biaoqing2").length);

$(this).next(".biaoqing2").toggle();						 

//alert($(this).parent(".kspl_bqbox").find(".biaoqing2").css("display"));

})

//点击图片

$(".biaoqing2 li").children("img").click(function(){

insertAtCursor($(this).parents(".ksplbox").find("[name=txtcommentss]").get(0),"["+$(this).attr('title')+"]");

});

//快速评论按钮点击事件

$("[name=btnPinlun2]").click(function(){

if($(this).parents(".ksplbox").find("textarea").val()==""){

alert("请输入评论内容");

return false;

}

$(this).parents("form").submit();

});

})	

//解决光标处插入数据问题

function insertAtCursor(myField, myValue) {

  // IE

      if (document.selection)  

    {  

    myField.focus();  

    sel = document.selection.createRange();  

    sel.text = myValue;  

    sel.select();  

    }  

else if (myField.selectionStart || myField.selectionStart == '0') {

          // MOZILLA/NETSCAPE support

          //起始位置

          var startPos = myField.selectionStart;		

          //结束位置

          var endPos = myField.selectionEnd;

  $content=$(myField).val();

          //插入信息

  $(myField).val($content.substr(0,startPos)+myValue+$content.substr(endPos,$content.length));

      } else {

          //没有焦点的话直接加在TEXTAREA的最后一位

          myField.innerHTML += myValue;

      }

} 	

function doResultLike(data){

var data = eval("(" + data + ")")['data'];

if (data != null) {

if (data['count'] != null) {

var tao_id = data['tao_id'];

var count = data['count'];

var $tao = $("[name=tao_id]");

for (var i = 0; i < $tao.length; i++) {

if ($tao.eq(i).val() == tao_id) {

$tao.eq(i).parents(".st_sht_like").find(".st_like_numm").html(count);

if(data['NoLike']==null){

$tao.eq(i).parents(".st_sht_like").find(".like_pinglun").fadeIn();

$pinlun = $tao.eq(i).parents(".st_sht_like").find(".like_pinglun");

c=setTimeout(function pinlun(){$pinlun.fadeOut()},3000);

$pinlun.find("[name=txtcommentss]").focus(function(){

clearTimeout(c);

});

}else{

$div = $tao.eq(i).parents(".st_sht_like").find(".like_pinglun");

$tao.eq(i).parents(".st_sht_like").find("[name=NoLike]").val("");

}			

}

}

}

else {

var tao_id = data['tao_id'];

var $tao = $("[name=tao_id]");

for (var i = 0; i < $tao.length; i++) {

if ($tao.eq(i).val() == tao_id) {

$tao.eq(i).parents(".st_sht_like").find(".like_over").fadeIn();

$likeover =$tao.eq(i).parents(".st_sht_like").find(".like_over");

setTimeout(function likeover(){$likeover.fadeOut()},3000);

}

}

}

}else{

window.location.href="/User/index";

}

}

</script>




</body>
</html>