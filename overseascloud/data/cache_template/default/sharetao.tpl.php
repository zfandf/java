<?php defined('ZZQSS') or exit('Access Denied'); ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>分享购宝贝列表页- 分享您喜欢的宝贝给大家 - <?php echo $cfg_site_name;?></title>
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
<script type="text/javascript" src="/templates/default/js/xb/list.js"></script>

</head>
<body>
 <?php include template('header'); ?>
    <div class="baobei">
        <div class="bb_center">
            <div class="bb_left">
                <div class="bb_lm">
                    <p>
                      您现在的位置：<a href="<?php echo url("index.php"); ?>">首页</a><i>&gt;</i><a href="<?php echo url("fen.php"); ?>">分享购</a></p>
                    <span></span>
                </div>
                <div class="bb_comment">
                    <div class="bb_fenlei">
                        <ul>
                            <li ><a class="f1" href="<?php echo url("sharetao.php?gtypeid=1"); ?>"><span>服装</span>
                                <em>服装</em> </a></li>
                            <li ><a class="f2" href="<?php echo url("sharetao.php?gtypeid=2"); ?>"><span>鞋包</span>
                                <em>鞋包</em> </a></li>
                            <li ><a class="f3" href="<?php echo url("sharetao.php?gtypeid=4"); ?>"><span>饰品</span>
                                <em>饰品</em> </a></li>
                            <li ><a class="f4" href="<?php echo url("sharetao.php?gtypeid=3"); ?>"><span>美容</span>
                                <em>美容</em> </a></li>
                            <li ><a class="f5" href="<?php echo url("sharetao.php?gtypeid=6"); ?>"><span>食品</span>
                                <em>食品</em> </a></li>
                            <li ><a class="f6" href="<?php echo url("sharetao.php?gtypeid=5"); ?>"><span>居家</span>
                                <em>居家</em> </a></li>
                        </ul>
                    </div>
                    
                    
                    
                    <div class="bb_list">
                        <ul>
                        
<?php if(is_array($listarray)) foreach($listarray AS $key => $dataarr) { ?>	

  <?php if(is_array($dataarr)) foreach($dataarr AS $r) { ?>   
                            <li>
                                <div class="fx_info">
                                    <h3>
                                        <?php echo $r['uname'];?>@&nbsp;<? echo date('m-d',$r['addtime']); ?>日分享</h3>
                                    <div class="shequ">
                                        <dl><? $gid=$r['gid'];
include_once(INC_PATH.'/table.class.php');
$likeobj=new TableClass('goodslike','lid');	
$pingobj=new TableClass('goodscomment','cid');						
$like_count=$likeobj->getcount("state = 1 and gid = '$gid'");
$ping_count=$pingobj->getcount("state = 1 and gid = '$gid'");
 ?>                        <form method="POST" action="<?php echo url("fen.php?share_like=xihuanyixia"); ?>">
<input name="tao_id" value="<?php echo $r['gid'];?>" type="hidden" />
                                 <dt><a name="like_over" href="javascript:void();">
                                                喜欢(<span><?php echo $like_count;?></span>)</a></dt>	
                                            <dt class="tl"><a href="<?php echo url("fen.php?action=view&gid=$r[gid]"); ?>">
                                                讨论(<span><?php echo $ping_count;?></span>)</a></dt>
                                            <dd>
                                        <img alt="<?php echo $r['goodsname'];?>" src="<?php echo TPL;?>images/xb/fen/x<?php echo $r['rindex'];?>.gif" /></dd>
<input name="NoLike" value="" type="hidden" />
                        </form>	
                                        </dl>
                                    </div>
                                </div>
                <div class="fx_nr">
                 <div class="fx_pic">
                  <a href="<?php echo url("fen.php?action=view&gid=$r[gid]"); ?>">
       <img class="CowryImg" onerror="this.src='/templates/default/images/xb/noimg80.gif'" limg="<?php echo $r['goodsimg'];?>" src="<?php echo $r['goodsimg'];?>" width="80" height="80" alt="<?php echo $r['why'];?>" /></a>
                                    </div>
                                    <div class="fx_pj">
                                        <h1>
                                            <a class="cowryName" href="<?php echo url("fen.php?action=view&gid=$r[gid]"); ?>">
                                             <?php echo $r['goodsname'];?></a></h1>
                                        <p>
<img src="/templates/default/images/xb/yinhao1.gif" alt="“" /><?php echo substrs($r['about'],295);?>...<a href="<?php echo url("fen.php?action=view&gid=$r[gid]"); ?>">[详细]</a>&nbsp;<img src="/templates/default/images/xb/yinhao2.gif" alt="”" /></p>
                                        
                                    </div>
                                </div>
                            </li>
                            	<?php } ?>

<?php } ?>
                        </ul>
                    </div>
                    <div class="p">
       <div class="page-bottom">

              <? echo pagelist($total,$pagesize,$page,"");; ?></div>
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
            <li>此分类宝贝分享<span><?php echo $total;?></span>件</li>
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
