<?php defined('ZZQSS') or exit('Access Denied'); ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta name="keywords" content="拼单购" />

<meta name="description" content="拼单购" />




<link type="text/css" rel="Stylesheet" href="<?php echo TPL;?>css/NewTopFoot.css" />

<link href="<?php echo TPL;?>css/AddItemPanel.css" rel="stylesheet" type="text/css" />

<script src="<?php echo TPL;?>js/jquery-1.4.1.min.js" type="text/javascript"></script>

<script src="<?php echo TPL;?>js/jQuery.Extend.js" type="text/javascript"></script>

<script type="text/javascript" src="<?php echo TPL;?>js/jQuery.Drag.min.js"></script>

<script src="<?php echo TPL;?>js/jquery.cookies.2.1.0.min.js" type="text/javascript"></script>

<script type="text/javascript" src="<?php echo TPL;?>js/Gobal.js"></script>

<link href="<?php echo TPL;?>css/pin.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="<?php echo TPL;?>js/Piece.js"></script>



    <style type="text/css">

        #ad20100930

        {

            z-index: 100;

            display: none;

            moz-opacity: 0.56;

            opacity: 0.56;

            filter: alpha(opacity=56);

            height: 40px;

            background: #fff url(<?php echo TPL;?>images/footlayer.jpg) repeat-x 0 0;

            position: fixed;

            _position: absolute;

            bottom: 0;

            border-top: #5BB6D0 solid 2px;

            left: 0;

            right: 0;

            width: 100%;

        }

        .gg_close

        {

            width: 15px;

            right: 10px;

            margin: 5px 0 -100px 0;

            background: url(<?php echo TPL;?>images/1000912.gif) no-repeat center 2px;

            height: 15px;

            position: absolute;

            z-index: 100;

        }

        .gg_img

        {

            float: left;

            position: fixed;

            _position: absolute;

            bottom: 0;

            z-index:8;width:950px;height:40px;cursor:pointer;}

        .gg_img span

        {

            height: 40px;

            width: 950px;

            display: block;

        }

        .zd_hf

        {

            position: fixed;

            _position: absolute;

            margin-left: -475px;

            left: 50%;

            height: 40px;

            width: 950px;

            bottom: 0;

            z-index: 110;

            display: none;

        }

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

<title>拼单购，爱拼才会赢，免国内运费</title>

</head>

<body>

    

    



    <script type="text/javascript">        $(function() {

            var r;

            try {

                r = jaaulde.utils.cookies.get("ad20100930");

            } catch (eee) {

                r = false;

            }

            if (!!r) {

                $("#ad20100930,#ad20100930a").remove();

            } else {

                if (typeof document.body.style.maxHeight == "undefined") {

                    $("#ad20100930,#ad20100930a").css("position", "absolute").css("margin-top", "0px").css("z-index", "100");

                    var divY = getViewportHeight() - $("#ad20100930").outerHeight();

                    $("#ad20100930,#ad20100930a").each(function() { $(this).css("top", (divY + document.documentElement.scrollTop).toString()); });

                    $(window).scroll(function() { $("#ad20100930,#ad20100930a").each(function() { $(this).css("top", divY + document.documentElement.scrollTop + ""); }); });

                }

                $("#ad20100930,#ad20100930a").show();

            }

        });

    </script>



    

    <form name="aspnetForm" method="post" action="#" id="aspnetForm">

<div>

<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTk2NjE5NzY2OWRk" />

</div>



    <div class="GobalCS" id="Panli_Customer" style="display: none;">

        

    </div>

<?php include template('header'); ?>

<div class="piece_top">

        <div class="what">



            <h2>

                <img src="<?php echo TPL;?>images/what.gif" alt="什么是拼单" /></h2>

            <ul>

                <li>看中了别人买的宝贝？那就赶快来拼单吧！</li>

                <li>拼单购的宗旨是为您节省更多的钱！</li>

            </ul>

            <a href="#" target="_blank">查看拼单规则</a>



        </div>

        <div class="bp">

            <h2>

                <img src="<?php echo TPL;?>images/bp.gif" alt="我的单被别人拼了" /></h2>

            <ul>

                <li>使用会员积分即可拼宝贝！</li>

                <li>未处理的宝贝都可以拼单！</li>

            </ul>



        </div>

        <div class="wp">

            <h2>

                <img src="<?php echo TPL;?>images/wp.gif" alt="我拼了别人的单" /></h2>

            <ul>

                <li>注册会员就可参加拼单购！</li>

                <li>拼得多省得多！</li>

            </ul>



        </div>

    </div>



    <div class="piece">

        <div class="pin_left">

 <div class="leftpan_con">

            <div class="possible">

              <h2 class="tit_new_h2 h45">可拼单的宝贝</h2>

                

                <div class="search">

                    <div class="select">



                           <input id="categoryID" onfocus="this.blur();" onmouseout="this.className='';" onmouseover="this.className='bian';" onclick="$('#categoryList').show()" readonly="readonly" type="text" value="所有分类" categoryid="-1" />

        <div onclick="this.style.display='none';" class="sort" id="categoryList" style="display: none;">





<a onclick="$('#categoryID').val('所有分类').attr('categoryid','0');" href="javascript:;"> 所有分类</a>



<?php if(is_array($typearray)) foreach($typearray AS $r) { ?>

<a onclick="$('#categoryID').val('<?php echo $r['typename'];?>').attr('categoryid','<?php echo $r['typeid'];?>');" href="javascript:;"> <?php echo $r['typename'];?></a>

<?php } ?>



</div>

                    </div>

                   <input class="text" id="searchKeyword" onfocus="searchFocus()"

                        onblur="searchBlur()" name="" type="text" value="请输入商品名.." />

          <input

                            class="go" name="" onmouseover="this.className='go_'" onmouseout="this.className='go'"

                            onclick="searchPiece()" type="button" value="搜一搜" />

                </div>

            </div>

             <div class="merchandise">

                <div class="gn">

                    <ul>

                        <li class="b1">



                            <label>

                                每页显示：</label><a class="yellow" href="<?php echo url("pinindex.php?pages=9"); ?>">9</a><a

                                     href="<?php echo url("pinindex.php?pages=12"); ?>">12</a><a 

                                        href="<?php echo url("pinindex.php?pages=24"); ?>">24</a></li>

                        <li class="b2">

                            <label>

                                排列方式：</label>

                            <a class="s5_" href="#" title="默认">默认</a>



                            <a class="s1" href="<?php echo url("pinindex.php?goodprices=asc"); ?>" title="按价格从低到高排序">

                            </a><a class="s2" href="<?php echo url("pinindex.php?goodprices=desc"); ?>" title="按价格从高到低排序">

                            </a><a class="s3" href="<?php echo url("pinindex.php?addtime=asc"); ?>" title="按时间从前到后排序">

                            </a><a class="s4" href="<?php echo url("pinindex.php?addtime=desc"); ?>" title="按时间从后到前排序">

                            </a></li>

                        <li class="b3">

                            <label>

                                价格区域：</label><input value="" class="wenben"

                                    id="minPrice" name="minPrice" type="text" onkeyup="value=value.replace(/[^\d\.]/g,'')" /><b>-</b><input

                                        value="" class="wenben" id="maxPrice" name="maxPrice"

                                        type="text" onkeyup="value=value.replace(/[^\d\.]/g,'')" />

<input class="que" id="subSearchBtn" name="submitprice" type="submit" value="确定" onclick="subSearch()" />



                        </li>

                        <li class="b4">

                            <dl>

                            	<dt><a target="_self" id="ctl00_NewContentPlaceHolder_next" href="?page=<? echo $page-1; ?>">上一页</a></dt>

                                <dd><a target="_self" id="ctl00_NewContentPlaceHolder_next" href="?page=<? echo $page+1; ?>">下一页</a></dd>

                            </dl>

                            

                            </li>

                    </ul>



                </div>

                

                <ul class="Goods">

                        <?php if(is_array($dataarray)) foreach($dataarray AS $r) { ?> 

                            <li>

                                <div class="pic">

                                    <a href="<?php echo $r['goodsurl'];?>" target="_blank">

                                        <img src="<?php echo $r['orderimg'];?>"

                                            alt="<?php echo $r['goodsname'];?>" onerror="this.src='<?php echo TPL;?>images/noimg220.gif';" height="220" width="220" /></a>

                                </div>

                                <div class="summary">



                                    <h1 id="goodsname">

                                        <a href="<?php echo url("pinindex.php?action=pay&oid=$r[oid]"); ?>" target="_blank" title="<?php echo $r['goodsname'];?>">

                                            <?php echo $r['goodsname'];?></a></h1>

                                    <p>

                                       ￥<?php echo $r['goodsprice'];?></p>

                                    <div class="pd"><a href="<?php echo url("pinindex.php?action=pay&oid=$r[oid]"); ?>" target="_blank">我要拼单</a></div>

                                    <dl>



                                        <dd>

                                            来源商家：<span><?php echo $r['goodssite'];?></span><b>-</b><?php echo $r['goodsseller'];?></dd>

                                        <dd>

                                            By：<span><?php echo $r['uname'];?></span></dd>

                                        <dd>

                                           人气：<span ><?php echo $r['pinnum'];?>次</span></dd>



                                    </dl>

                                </div>

                            </li>

                        <?php } ?>

                </ul>

            </div>



           <div class="yj"><? echo pagelist($total,$pagesize,$page,"");; ?>        </div>

</div>

</div>

        <div class="pin_right">

            <div class="bz">

        <div class="lm boder">

     		<h2 class="tit_jiantou_h2 h45">帮助信息</h2></div>
                <div class="ask">
                    <ul>
                 <?php if(is_array($articlearray)) foreach($articlearray AS $r) { ?>    
<li><a href="<?php echo url("help.php?action=view&id=$r[aid]"); ?>" title="<?php echo $r['title'];?>"><?php echo $r['title'];?></a></li>
              <?php } ?>	

</ul>

                </div>

                <div class="jishu">

                    <ul>

                        <li>参与人次:<span><?php echo $totalnum;?></span></li>



                        <li>可拼单的宝贝:<span><?php echo $total;?></span></li>

                    </ul>

                </div>



            </div>

            <div class="pin_right_bottom"></div>

<div class="pin_right_top"></div>

            <div class="bz">

                <div class="lm boder">

     		<h2 class="tit_jiantou_h2 h45">拼单进行时</h2></div>



                <div class="ing">

                    <ul>

                    <?php if(is_array($data)) foreach($data AS $r) { ?> 	

                       <li>

                           <span><?php echo ddate('Y-m-d', $r['addtime']);?>  </span><i><?php echo $r['uname'];?></i>拼单成功

   </li>

<?php } ?>

                    </ul>

                </div>

            </div>

            <div class="pin_right_bottom"></div>

<div class="pin_right_top"></div>

            <div class="bz">

                <div class="lm boder">

     		<h2 class="tit_jiantou_h2 h45">热拼宝贝</h2></div>

                <div class="bang">

                    <div id="point" class="jifen">

                    	<?php if(is_array($rightarray)) foreach($rightarray AS $key => $r) { ?> 

                                <dl>

                                    <dt style="display: none;">

                                        <div class="img">

                                            <a href="<?php echo $r['goodsurl'];?>" target="_blank" title="<?php echo $r['goodsname'];?>">

                                                <img src="<?php echo $r['goodsimg'];?>"

                                                    alt="" /></a>

                                        </div>

                                        <div class="xiangxi">

                                            <h1>

                                                <i>



                                                    <? echo $key+1; ?>.</i><a title="<?php echo $r['goodsname'];?>" href="<?php echo $r['goodsurl'];?>"

                                                        target="_blank"><?php echo $r['goodsname'];?></a></h1>

                                            <label>

                                                ￥<?php echo $r['goodsprice'];?></label>

                                            <p>

                                               被拼单：<i><?php echo $r['pinnum'];?></i>次</p>

                                        </div>



                                    </dt>

                                    <dd onmouseover="showHotProInfo(this)">

                                        <span><? echo $key+1; ?></span><p>

                           <a href="<?php echo $r['goodsurl'];?>" target="_blank"><?php echo $r['goodsname'];?>

                                             </a></p>

                                    </dd>

                                </dl>  

<?php } ?>

                    </div>

                    

                </div>

            </div>

            <div class="pin_right_bottom"></div>

            

        </div>

    </div>

<?php include template('footer'); ?>

    </form>



    <script type="text/javascript">

        var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");

        document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));

    </script>



    <script type="text/javascript">

        try { var pageTracker = _gat._getTracker("UA-436090-1"); pageTracker._trackPageview(); } catch (err) { }

    </script>



</body>

</html>

