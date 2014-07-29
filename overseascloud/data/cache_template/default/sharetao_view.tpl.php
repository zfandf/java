<?php defined('ZZQSS') or exit('Access Denied'); ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title><?php echo $value['goodsname'];?> - <?php echo $gtype['typename'];?>分享 - <?php echo $cfg_site_name;?></title>
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

</head>
<body>
 
 <?php include template('header'); ?>
     
    <div class="baobei">
        <div class="bb_center">
            <div class="bb_left">
                <div class="bb_lm">
                    <p>
您现在的位置：<a href="<?php echo url("index.php"); ?>">首页</a><i>&gt;</i><a href="<?php echo url("fen.php"); ?>">分享购</a><i>&gt;</i><a href="<?php echo url("sharetao.php"); ?>"><?php echo $gtype['typename'];?>全部分享</a><i>&gt;</i><?php echo $value['goodsname'];?></p>
<span></span>
                </div>
                <div class="shangpin">
                    <div class="sp_h1">
                        <h1>
                        <?php echo $value['goodsname'];?></h1>
                    </div>
                    <div class="chanpin_info">
                        <div class="pic">
                         <img src="<?php echo $value['goodsimg'];?>" width="225" height="230" onerror="this.src='/templates/default/images/xb/noimg220.gif'" alt="<?php echo $value['goodsname'];?>" />
                        </div>
                        <div class="info">
                            <div class="info_cs">
                                <table>
                                    <tr>
                                        <td class="z">
                                         星级：
                                        </td>
                                        <td>
                                            <div class="xingji">
<img alt="<?php echo $value['rindex'];?>" src="<?php echo TPL;?>images/xb/fen/x<?php echo $value['rindex'];?>.gif">
                                             </div>
                                            <i>(<?php echo $value['uname'];?>@ <? echo date('m-d',$r['addtime']); ?>日分享)</i>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="z">
                                            价格：
                                        </td>
                                        <td>
                                            <span>￥<?php echo $value['goodsprice'];?></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="z">
人气：
                                        </td>
                                        <td>
                                            <dl class="shequ2"><? $gid=$value['gid'];

include_once(INC_PATH.'/table.class.php');

$likeobj=new TableClass('goodslike','lid');	

$pingobj=new TableClass('goodscomment','cid');						

$like_count=$likeobj->getcount("state = 1 and gid = '$gid'");

$ping_count=$pingobj->getcount("state = 1 and gid = '$gid'");

 ?><form method="POST" action="<?php echo url("fen.php?action=view&share_like=xihuan"); ?>">
           <input type="hidden" name="tao_id" value="<?php echo $value['gid'];?>"/>
<dt>点击(<span><?php echo $value['views'];?></span>)</dt>
                           <dt><a name="like_over" href="javascript:void();">喜欢(<span><?php echo $like_count;?></span>)</a></dt>
                            <dd><a href="#comment">讨论(<span><?php echo $ping_count;?></span>)</a></dd>
<input name="NoLike" value="" type="hidden" />
                 </form>	
                                </dl>
                                 </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="biao2">
                                <table>
                                    <tr>
                                        <td class="z">
                                          理由：
                                        </td>
                                        <td class="tag">
                                            
                                            <span><?php echo $value['why'];?></span>
                                        </td>
                                    </tr>
                                    <tr class="laiyuan">
                                        <td class="z">
                                            来源：
                                        </td>
                                        <td>
                                        <span>
                                        <?php echo $value['shopname'];?></span><a href="<?php echo $value['goodsurl'];?>">[查看购买链接]</a>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="fx_cz">
 <a class="gm"style="cursor: pointer;" onClick="FastAddShow('<?php echo $value['goodsurl'];?>')" id="submitBtn">
                         我要代购</a>
                            </div>
                            
                            <div class="fenxiang">
                                <label>
                                    邀请：</label>


                               
<div id="bdshare" class="bdshare_t bds_tools get-codes-bdshare">
<a class="bds_qzone"></a>
<a class="bds_tsina"></a>
<a class="bds_tqq"></a>
<a class="bds_renren"></a>
<a class="bds_t163"></a>
<span class="bds_more">更多</span>
<a class="shareCount"></a>
</div>
<script type="text/javascript" id="bdshare_js" data="type=tools&amp;uid=722248" ></script>
<script type="text/javascript" id="bdshell_js"></script>
<script type="text/javascript">
document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000)
</script>



                               
                            </div>
                        </div>
                    </div>
                    <div class="pl">
                        <div class="ping">
                            <h2>
                           <?php echo $value['goodsname'];?>的详情</h2>
                        </div>
                        <div class="pj_nr">
                            <img src="/templates/default/images/xb/yinhao1.gif" alt="引号" /><?php echo $value['about'];?><img src="/templates/default/images/xb/yinhao2.gif" alt="引号" />
                        </div>
                    </div>
                </div>
                
                <div class="qita">
                <div class="dajia">
                  <h2>
                  网友的评论</h2>
                    </div>
                    <div class="qita_pl">
                        <ul>
                   <?php if(is_array($commonarray)) foreach($commonarray AS $r) { ?> 
   <? $uid=$r['uid'];

include_once(INC_PATH.'/table.class.php');

$userobj=new TableClass('users','uid');

$uservalue=$userobj->getone($uid);

 ?>          
              <li>
                 <div class="fxr">
                   <b>
       <?php echo $r['uname'];?>的评论</b><span>@ <? echo date('Y-m-d H:i:s',$r['addtime']); ?>发表</span></div>
         <div class="qita_fx">
       <img src="/templates/default/images/xb/yinhao1.gif" alt="“" /><?php echo Char_biaoqing($r['content']);?><img src="/templates/default/images/xb/yinhao2.gif" alt="”" /></div>
        </li>
  	<?php } ?>	  
                        </ul>
                    </div>
  <div class="p">
       <div class="page-bottom"><? echo pagelist($total,$pagesize,$page,"");; ?>                </div>
                        </div>        </div>
                <div class="wy_pl" id="comment">
                <div class="dajia">
                  <h2>
                  您的评论</h2>
               </div>
   
              <p>
             <span>提示：登录以后就可以留言哦！收缩表情请重复点击表情！</span><a href="/user.php?action=login">立即登录</a></p>
<style>
.stcomentswarp{width:690px;height:290px;background:url() no-repeat center bottom;padding-bottom:7px;}
.stcoments{width:668px;height:auto;padding:10px;margin-top:10px;border:0px #dddddd solid;position:relative;}
.sendmsg_tool{width:260px;height:auto;float:left;display:inline;margin-top:10px;}
.sendmsg_tool li{width:50px;height:20px;float:left;display:inline;line-height:20px;}
.sdmsg_face{background:url(/templates/default/images/sharetao/infotoolico.gif) no-repeat 0px 2px;padding-left:20px;}
.biaoqing{width:260px;height:55px;border:1px #F06 solid;position:absolute;z-index:1;padding:5px;background-color:#FFF;}
.biaoqing li{list-style:none;width:24px;height:24px;float:left;display:inline;border:1px #FFF solid;}
.sendplbtnbg{height:74px;float:left;display:inline;margin-top:20px;}
.stcomedt_txt{width:666px;height:100px;border:1px #CCC solid;background-color:#f8f8f8;font-size:14px;line-height:22px;resize:none;}
.sendplbtn{width:94px;height:34px;background:url(/templates/default/images/sharetao/sharet.gif) no-repeat -137px -34px;border:none;cursor:pointer;float:left;display:inline;}
</style>	

       <div class="stcomentswarp">
      <div class="stcoments">
      	<form method="POST" action="<?php echo url("sharetao.php?action=view&common=share_common"); ?>">
      	<input type="hidden" name="taoid" value="<?php echo $value['gid'];?>"/>
 <div class="sendmsg_tool">
            <ul>
              <li class="sdmsg_face"><a id="biaoqin" href="javascript:void(0);">表情</a></li>
              </ul>
          </div>
        <div class="stcomedtbg">
          <textarea name="txtcommentss" MaxLength="100" class="stcomedt_txt"></textarea>
         
            <div class="sendplbtnbg">
            <div class="sendzf" style="display:none;">
            </div>
             <input type="button" name="btnPinlun" class="sendplbtn" value="" />
            <p class="cl"></p>
          </div>
          <div class="cl"></div>
   <div class="biaoqing" id="div_biaoqin" style="top:40px;display:none;">
            <ul>
<li><img src="<?php echo TPL;?>images/sharetao/head/baipu.gif" title="摆谱" height="24" width="24"></li>
<li><img src="<?php echo TPL;?>images/sharetao/head/biaoyan.gif" title="表演" height="24" width="24"></li>
<li><img src="<?php echo TPL;?>images/sharetao/head/budong.gif" title="不懂" height="24" width="24"></li>
<li><img src="<?php echo TPL;?>images/sharetao/head/chifan.gif" title="吃饭" height="24" width="24"></li>
<li><img src="<?php echo TPL;?>images/sharetao/head/chinai.gif" title="吃奶" height="24" width="24"></li>
<li><img src="<?php echo TPL;?>images/sharetao/head/danding.gif" title="淡定" height="24" width="24"></li>
<li><img src="<?php echo TPL;?>images/sharetao/head/fankun.gif" title="犯困" height="24" width="24"></li>
<li><img src="<?php echo TPL;?>images/sharetao/head/jiaoao.gif" title="骄傲" height="24" width="24"></li>
<li><img src="<?php echo TPL;?>images/sharetao/head/juhan.gif" title="巨寒" height="24" width="24"></li>
<li><img src="<?php echo TPL;?>images/sharetao/head/lenghan.gif" title="冷汗" height="24" width="24"></li>
<li><img src="<?php echo TPL;?>images/sharetao/head/luguo.gif" title="路过" height="24" width="24"></li>
<li><img src="<?php echo TPL;?>images/sharetao/head/paishou.gif" title="拍手" height="24" width="24"></li>
<li><img src="<?php echo TPL;?>images/sharetao/head/piaoguo.gif" title="飘过" height="24" width="24"></li>
<li><img src="<?php echo TPL;?>images/sharetao/head/shangxin.gif" title="伤心" height="24" width="24"></li>
<li><img src="<?php echo TPL;?>images/sharetao/head/songhua.gif" title="送花" height="24" width="24"></li>
<li><img src="<?php echo TPL;?>images/sharetao/head/wuliao.gif" title="无聊" height="24" width="24"></li>
<li><img src="<?php echo TPL;?>images/sharetao/head/yinxiao.gif" title="阴笑" height="24" width="24"></li>
<li><img src="<?php echo TPL;?>images/sharetao/head/yunle.gif" title="晕了" height="24" width="24"></li>
<li><img src="<?php echo TPL;?>images/sharetao/head/zoule.gif" title="走了" height="24" width="24"></li>
<li><img src="<?php echo TPL;?>images/sharetao/head/zuocao.gif" title="做操" height="24" width="24"></li>
              <p class="cl"></p>
            </ul>
          </div>
        </div>
         </form>

       </div>
            </div>
                </div>  
            </div>
<div class="bb_right">
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
            相关分享</h2>
        <span></span>
    </div>
    <div class="remen">
        <ul>
         	<?php if(is_array($sharearray3)) foreach($sharearray3 AS $r) { ?>   
            <li>
                <div class="rm_pic">
                    <a href="<?php echo url("fen.php?action=view&gid=$r[gid]"); ?>">
                        <img src="<?php echo $r['goodsimg'];?>" alt="<?php echo $r['goodsname'];?>" onerror="this.src='/templates/default/images/xb/noimg80.gif'" /></a>
                </div>
                <div class="rm_info">
                    <h2>
                        <a href="<?php echo url("fen.php?action=view&gid=$r[gid]"); ?>">
                          <?php echo $r['goodsname'];?></a></h2>
                    <span>￥<?php echo $r['goodsprice'];?></span>
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

$(".st_sht_pic img,.like_hf_user dt img").lazyload({

placeholder : "/Images/sharetao/grey.gif",

            effect:"fadeIn",

failurelimit : 20

    	})

//关闭提示

$(".close").click(function(){

$(this).parent("div").hide();

});

//底部图片大小限制

 var w=$(".st_sht_pic img").width();

     var h=$(".st_sht_pic img").height();

     var x=(w*178)/h;

     $(".st_sht_pic img").css({"width":"178px","height":"x"})

//中间图片大小限制

     var w1=$(".st_spimgs img").width();

     var h1=$(".st_spimgs img").height();

     var x1=(w1*400)/h1;

     var y1=(h1*420)/w1;

     if(w1<=420)

     {

        $(".st_spimgs img").css({"width":w1+"px","height":h1+"px"});

     }

     else

 { 

    $(".st_spimgs img").css({"width":"420px","height":y1+"px"});

 }

 

 

$(".st_ucbtn_l").click(function(){

$(this).parents("form").submit();

});

//喜欢当前商品

$(".st_lkbtn").click(function(){

$(this).parents("form").submit();

});

//取消喜欢当前商品

$(".st_lk_ak").click(function(){

$(this).siblings("[name=NoLike]").val("NoLike");

$(this).parents("form").submit();

});

//取消关注点击事件

$(".st_ucbtn_ygz").click(function(){

$(this).parents("form").submit();

});

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

//评论按钮点击

$("[name=btnPinlun]").click(function(){

if($(this).parent().parent().find("textarea").val()==""){

alert("请输入评论内容");

return false;

}

$(this).parents("form").submit();

});

$("[name=huifu]").click(function(){

var $name=$(this).parent().siblings().find(".fl").text();

$("[name=txtcommentss]").val("回复@"+$name+":");

});



//发送私信按钮点击

$("#fasixin").click(function(){

$("#siXinName").text($(this).parents(".st_userinfo_r").find(".st_uh_nam").text());

$("#ceng").show();

});

//确定发送私信

$("#fasongsixin").click(function(){

if($("[name=textarea]").val()==""){

alert("请输入短信内容");

return false;

}

$(this).parents("form").submit();

});



$("#biaoqin").click(function(){

$("#div_biaoqin").toggle();

});

$("#div_biaoqin li").children("img").click(function(){

insertAtCursor($("[name=txtcommentss]").get(0),"["+$(this).attr('title')+"]");

});



//快速评论

$(".plks").click(function(){

$(this).parent().parent().parent().next().find(".ksplbox").toggle();				  

})

$(".kspl_bq").click(function(){

$(this).next(".biaoqing2").toggle();						 

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

$("[name=zhuanfa]").click(function(){

$(this).parents("form").submit();

});

//确定发送私信

$("#zhuanfaxinxi").click(function(){

$(this).parents("form").submit();

});



});

function getShareTao(data){

var data = eval("(" + data + ")")['data'];

var val="://@"+data['user_name']+":"+data['share_tao_content'];

$("#textarea").val(val);

$("[name=taoid]").val(data['share_tao_id']);

$("#ceng1").show();

$("#textarea").focus();

}

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



function doResultGuanZhu(data){

if(data==""){

window.location.href="/User/index";

}

var data = eval("(" + data + ")")['data'];

if(data!=null){

$("#wgz"+data).next().hide();

$("#ygz"+data).next().show();

$("#wgzs"+data).next().hide();

}

}

function doResultQuXiaoGuanZhu(data){

var data = eval("(" + data + ")")['data'];

if(data!=null){

$("#wgz"+data).next().show();

$("#ygz"+data).next().hide();

$("#ygzs"+data).next().hide();

}

}

function doResultLike(data){

var data = eval("(" + data + ")")['data'];

if (data != null) {

if(data[i]!=null){

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

if (data['count'] != null) {

var tao_id = data['tao_id'];

var count = data['count'];

var $tao = $("[name=tao_id]");

for (var i = 0; i < $tao.length; i++) {

if ($tao.eq(i).val() == tao_id) {

if($tao.eq(i).parent().parent().attr("class")=="st_like_btnbg" && $tao.eq(i).parent().parent().find("[name=i]").val()==null){

$tao.eq(i).parents(".st_sht_like").find(".st_like_numm").html(count);

if(data['NoLike']==null){

$tao.eq(i).parents(".st_like_btnbg").find(".like_pinglun").fadeIn();

$pinlun =$tao.eq(i).parents(".st_like_btnbg").find(".like_pinglun");

c=setTimeout(function pinlun(){$pinlun.fadeOut()},3000);

$pinlun.find("[name=txtcommentss]").focus(function(){

clearTimeout(c);

});

}else{

$div = $tao.eq(i).parents(".st_like_btnbg").find(".like_pinglun");

$tao.eq(i).parents(".st_like_btnbg").find("[name=NoLike]").val("");

}

};



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

}

}else{

window.location.href="/User/index";

}

}

function ResultLike(data){

var data = eval("(" + data + ")")['data'];

if (data != null) {



var count = data['count'];

$(".st_lknum").html(count);

if(data['NoLike']==null){

$(".st_lkbtn").hide();

$(".st_lk_ak").show();

}else{



$("#NoLike").val("");

$(".st_lk_ak").hide();

$(".st_lkbtn").show();

}			

}else{

window.location.href="/User/index";

}

}

</script>
</body>
</html>