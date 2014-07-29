<?php defined('ZZQSS') or exit('Access Denied'); ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>拼单购确认付款</title>

    <link href="<?php echo TPL;?>css/pay.css" rel="stylesheet" type="text/css" />

   	<script src="<?php echo TPL;?>js/jquery-1.4.1.min.js" type="text/javascript"></script>

</head>

<body>

    <form name="Form1" method="post" action="<?php echo url("pinindex.php?action=edit"); ?>" id="Form1" onsubmit="return checkall()">

<div>

<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMzI1NjUyMzI5ZGQ=" />

</div>



    <input type="hidden" value="<?php echo $value['goodsprice'];?>" id="productPrice" />

    <input type="hidden" value="<?php echo $value['sendprice'];?>" id="sendPrice" />

    <input type="hidden" value="<?php echo $_USERS['scores'];?>" id="UserScore" />

    <input type="hidden" value="<?php echo $_USERS['money'];?>" id="UserCurrentPrice" />

<input type="hidden" value="<?php echo $value['oid'];?>" id="oid" name="oid" />



<div class="top">
        <div class="logo">
             <a href="/">

                <img src="<?php echo TPL;?>images/xb/logo.gif" alt="" /></a>
            <p>
               </p>
        </div>
        <div class="mypanli">
            <ul>
                <li><a href="<?php echo url("help.php"); ?>">帮助中心</a> </li>
                <li><a href="/">返回首页</a></li>
            </ul>
            <p>
                <img src="<?php echo TPL;?>images/pin.gif" alt="爱拼才会赢" /></p>
        </div>
    </div>
    <div class="x_h2">
    </div>
    <div class="center">
        <div class="top_yj">
        </div>
        <div class="bt">
            <h1>
            <a href="<?php echo $value['goodsurl'];?>" target="_blank">

                    <?php echo $value['goodsname'];?></a></h1>



        </div>

        <div class="left">

            <div class="pic">

                <a href="<?php echo $value['goodsurl'];?>" target="_blank">

                    <img src="<?php echo $value['goodsimg'];?>"

                        alt="<?php echo $value['goodsname'];?>" onerror="this.src='<?php echo TPL;?>images/noimg220.gif';" style="width:220px;height:220px;" /></a>

            </div>

            <div class="gmr">

                <table>

                    <tr>



                        <td class="z">

                            人气：

                        </td>

                        <td>

                            2次

                        </td>

                        <td class="z">

                            By：

                        </td>

                        <td>



                            <?php echo $value['uname'];?>

                        </td>

                    </tr>

                </table>

            </div>

        </div>

        <div class="right">

            <div class="sp">

                <table>



                    <tr>

                        <td class="l">

                           购买商品页网址：

                        </td>

                        <td>

                            <input class="text hui" name="goodsurl" type="text" value="<?php echo $value['goodsurl'];?>" /><a class="ck"

                                href="<?php echo $value['goodsurl'];?>" target="_blank">查看商品</a>

                        </td>

                    </tr>

                    <tr>



                        <td class="l">

                           商家名称：

                        </td>

                        <td>

                            <a class="wz">

                                <?php echo $value['goodssite'];?></a><a class="dm" href="<?php echo $value['goodsurl'];?>" target="_blank"><?php echo $value['goodsseller'];?></a>

                        </td>

                    </tr>



                    <tr>

                        <td class="l">

                            商品价格：

                        </td>

                        <td>

                            <b><?php echo $value['goodsprice'];?></b>

                        </td>

                    </tr>

                    

                    <tr class="shu">

                        <td class="l">

                          商品数量：

                        </td>

                        <td>

                            <input class="text" id="PieceproductNum" name="pieceNum" onblur="if(this.value.length<=0) this.value=1;sumBlur();"

                                value="1" maxlength="6" onkeyup="value=value.replace(/[^\d]/g,'')" type="text" /><a

                                    title="增加数量" onclick="$('#PieceproductNum').val(parseInt($('#PieceproductNum').val())+1);sumBlur();"></a><a

                                        class="jian" title="减少数量" onclick="var tb=$('#PieceproductNum'); parseInt(tb.val())<2?1:tb.val(parseInt(tb.val())-1);sumBlur();"></a>

                        </td>

                    </tr>

                    <tr>

                        <td class="l">



                            商品备注：

                        </td>

                        <td>

                            <label class="picking" onclick="noremark()">

                                <input type="checkbox" value="1" id="RemarkCheck" />如果无特殊商品备注说明-请勾选此项</label>

                            <textarea id="PieceProductRemark" onblur="rblur(this);" onfocus="if(this.className=='red'){this.value='';this.className='still';}"

                                onkeyup="if($.trim(this.value).length>0) $(this).attr('class','');else $(this).attr('class','still');"

                                class="still" name="pieceRemark" cols="" rows=""></textarea>

                        </td>

                    </tr>



                    <tr>

                        <td>&nbsp;

                            

                        </td>

                        <td>

                            <label for="PayFeight" class="cedan" onclick="return selectFeight();">

                                <input type="checkbox" id="PayFeight" name="PayFeight" value="1" />若拼单不成功，我愿意单独支付运费购买此商品</label>

                        </td>



                    </tr>

                </table>

            </div>

            

        </div>

        <div class="pay" style="clear: both">

            <div class="yuer">

                <ul>

                    <li>您的当前积分为：<b><?php echo $_USERS['scores'];?></b>点</li>



                    <li>您的帐户余额为：<b><?php echo $_USERS['money'];?></b><a href="<?php echo url("m.php?name=rmbaccount"); ?>" target="_blank">充值</a></li>

                    <li><a style="color: #f90;" href="#"

                              target="new">全场免费代购，充值就送钱！</a></li>



                </ul>

            </div>

            <div class="ok">

                <ul>

                    <li>本次拼单需消耗：<b id="totalPoint">20</b>点积分</li>



                    <li>本次需要支付：<span id="fPanel" style="display: none;"><i id="ProPrice"><?php echo $value['goodsprice'];?></i>+<i><?php echo $value['sendprice'];?> (运费)</i>=</span><b

                        id="totalPrice"><?php echo $value['goodsprice'];?></b></li>

                </ul>

                <input class="pd" onmouseover="this.className='pd_'" onmouseout="this.className='pd'"

                    type="submit" value="确认付款" />

            </div>

        </div>

    </div>



    </form>

    <div class="foot">

        <p><? $Table=new Tableclass('about','aid');

$aboutlist=$Table->getdata('','','listorder asc,aid asc','title,aid');

 ?><?php if(is_array($aboutlist)) foreach($aboutlist AS $r) { ?>

<a href="<?php echo url("about.php?aid=$r[aid]"); ?>"><?php echo $r['title'];?></a>&nbsp;|&nbsp;

<?php } ?>
      

        </p>

    <?php echo $cfg_site_bottomtxt;?> 

    </div>

    



    <script type="text/javascript">

        var ProPrice = parseFloat(document.getElementById('productPrice').value);

        var SendPrice = parseFloat(document.getElementById('sendPrice').value);



        //备注框焦点脱离

        function rblur(dom) {

            if ($.trim($(dom).val()).length <= 0) $(dom).attr("class", "still");

        }



        //备注复选框勾选方法

        function noremark() {

            if (document.getElementById("RemarkCheck").checked) $("#PieceProductRemark").attr("disabled", "disabled").attr("class", "hui").val("我对此商品无任何特殊备注。");

            else $("#PieceProductRemark").removeAttr("disabled").attr("class", "still").val("");

        }



        //计算价格和需要的积分

        function sumBlur() {

            var num = parseInt($("#PieceproductNum").val());

            if (document.getElementById("PayFeight").checked) {

                $("#ProPrice").text((ProPrice * num).toFixed(2));

                $("#totalPrice").text("￥" + (ProPrice * num + SendPrice).toFixed(2));

            }

            else

                $("#totalPrice").text("￥" + (ProPrice * num).toFixed(2));



            $('#totalPoint').text(Math.floor(ProPrice * num) > 20 ? Math.floor(ProPrice * num).toString() : "20");

        }

        //用户是否愿意支付运费

        function selectFeight() {

            var c = document.getElementById("PayFeight");

            if (c.checked)

                $('#fPanel').show();

            else

                $('#fPanel').hide(); sumBlur();

        }

        //提交检查

        function checkall() {

            if ($.trim($('#PieceProductRemark').val()).length <= 0)

                $('#PieceProductRemark').val('请填写备注').attr("class", "red");

            if ($('#PieceProductRemark').attr('class') == 'red')

                return false;



            if (parseFloat($('#UserCurrentPrice').val()) < (ProPrice * parseInt($("#PieceproductNum").val()) + (document.getElementById("PayFeight").checked ? SendPrice : 0))) {

                alert('很抱歉，您的余额不足，无法参与本次拼单！');

                return false;

            }

            if (parseFloat($('#UserScore').val()) < parseFloat($('#totalPoint').text())) {

                alert('很抱歉，您的积分不足，无法参与本次拼单！');

                return false;

            }



            return true;

        }

    </script>



    <script type="text/javascript">

        var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");

        document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));

    </script>



    <script type="text/javascript">

        try { var pageTracker = _gat._getTracker("UA-436090-1"); pageTracker._trackPageview(); } catch (err) { }

    </script>



</body>

</html>

