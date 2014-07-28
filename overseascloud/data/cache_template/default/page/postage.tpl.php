<?php defined('ZZQSS') or exit('Access Denied'); ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="Stylesheet" href="<?php echo TPL;?>css/NewTopFoot.css" />
<link href="<?php echo TPL;?>css/AddItemPanel.css" rel="stylesheet" type="text/css" />

<script src="<?php echo TPL;?>js/jquery-1.4.1.min.js" type="text/javascript"></script>

<script src="<?php echo TPL;?>js/jQuery.Extend.js" type="text/javascript"></script>

<script type="text/javascript" src="<?php echo TPL;?>js/jQuery.Drag.min.js"></script>

<script src="<?php echo TPL;?>js/jquery.cookies.2.1.0.min.js" type="text/javascript"></script>

<script type="text/javascript" src="<?php echo TPL;?>js/Gobal.js"></script>

<link type="text/css" href="<?php echo TPL;?>css/yunfei.css" rel="stylesheet" />
<title>国际运费 - <?php echo $cfg_site_name;?></title>
</head>
<body>

<form name="aspnetForm" method="post" action="" id="aspnetForm">


<?php include template('header'); ?>

    <script type="text/javascript">
        function showpaihang(str, num) {
            document.getElementById(str + "_1").className = "";
            document.getElementById(str + "_2").className = "";
            document.getElementById(str + "_3").className = "";
            document.getElementById(str + "_4").className = "";
            document.getElementById(str + "_" + num).className = "on_";
            document.getElementById(str + "1").style.display = "none";
            document.getElementById(str + "2").style.display = "none";
            document.getElementById(str + "3").style.display = "none";
            document.getElementById(str + "4").style.display = "none";
            document.getElementById(str + num).style.display = "";
        }
    </script>

    <div class="yunfei">
        <div class="yunfei_top">
            <h1>
                运费对比表<span>（运费）</span></h1>
            <p>
                我们提供以下几种质优价廉的国际运送方式供您比较！</p>
        </div>

        <div class="name_">
            <ul>
                <li class="on_" id="kd_1" onclick="showpaihang('kd','1')">DHL超快</li>
                <li id="kd_2" onclick="showpaihang('kd','2')">EMS特快</li>
                <li id="kd_3" onclick="showpaihang('kd','3')">AIR普快<span>(2kg以下邮政小包)</span></li>
                <li id="kd_4" onclick="showpaihang('kd','4')">国内转送 </li>

            </ul>
        </div>
        <div class="dibu">
            <div class="biao" style="display: " id="kd1">
                <p>
                    DHL一般的运期为2~3个工作日，不同的国家运期略有变动噢！</p>
                <table width="100%" border="0">
                    <tr>

                        <th colspan="2" class="w1">
                            运达地
                        </th>
                        <th class="w2">
                            起重500g及以内
                        </th>
                        <th class="w3">
                            每续重500g或其零数
                        </th>
                    </tr>

                    <tr class="lanmu">
                        <td colspan="2" class="w11">
                            国家/地区
                        </td>
                        <td class="w2">
                            代购折扣价<span>(￥)</span>
                        </td>
                        <td class="w3">

                            代购折扣价<span>(￥)</span>
                        </td>
                    </tr>
                    <tr>
                        <td class="w1">
                            美国
                        </td>
                        <td class="w1">

                            USA
                        </td>
                        <td class="w2">
                            151.00
                        </td>
                        <td class="w3">
                            50.00
                        </td>
                    </tr>
                    <tr class="hui">

                        <td>
                            加拿大
                        </td>
                        <td class="w1">
                            Canada
                        </td>
                        <td class="w2">
                            151.00
                        </td>
                        <td class="w3">

                            50.00
                        </td>
                    </tr>
                    <tr>
                        <td class="w1">
                            法国
                        </td>
                        <td class="w1">
                            France
                        </td>

                        <td class="w2">
                            211.00
                        </td>
                        <td class="w3">
                            53.00
                        </td>
                    </tr>
                    <tr class="hui">
                        <td class="w1">
                            英国
                        </td>

                        <td class="w1">
                            U.K.
                        </td>
                        <td class="w2">
                            211.00
                        </td>
                        <td class="w3">
                            53.00
                        </td>
                    </tr>

                    <tr>
                        <td class="w1">
                            爱尔兰
                        </td>
                        <td class="w1">
                            ireland
                        </td>
                        <td class="w2">
                            211.00
                        </td>

                        <td class="w3">
                            53.00
                        </td>
                    </tr>
                    <tr class="hui">
                        <td class="w1">
                            荷兰
                        </td>
                        <td class="w1">
                            Netherlands
                        </td>

                        <td class="w2">
                            211.00
                        </td>
                        <td class="w3">
                            53.00
                        </td>
                    </tr>
                    <tr>
                        <td class="w1">
                            澳大利亚
                        </td>

                        <td class="w1">
                            Australia
                        </td>
                        <td class="w2">
                            171.50
                        </td>
                        <td class="w3">
                            37.50
                        </td>
                    </tr>

                    <tr class="hui">
                        <td class="w1">
                            新西兰
                        </td>
                        <td class="w1">
                            New Zealand
                        </td>
                        <td class="w2">
                            171.50
                        </td>

                        <td class="w3">
                            37.50
                        </td>
                    </tr>
                    <tr>
                        <td class="w1">
                            德国
                        </td>
                        <td class="w1">
                            Germany
                        </td>

                        <td class="w2">
                            211.00
                        </td>
                        <td class="w3">
                            53.00
                        </td>
                    </tr>
                    <tr class="hui">
                        <td colspan="2" class="w11">
                            西欧(Western Europe)
                            <div class="guojia">

                                奥地利/比利时/丹麦/芬兰/希腊/冰岛/卢森堡/摩纳哥/挪威/西班牙/葡萄牙/瑞典/瑞士/土耳其/马耳他/意大利
                            </div>
                        </td>
                        <td class="w2">
                            211.00
                        </td>
                        <td class="w3">
                            53.00
                        </td>
                    </tr>

                    <tr>
                        <td colspan="2" class="w11">
                            东南亚(Southeast Asia)
                            <div class="guojia">
                                马来西亚/新加坡/泰国/越南/柬埔寨/菲律宾/印度尼西亚/日本/韩国/蒙古/朝鲜/中国香港/中国澳门/中国台湾</div>
                        </td>
                        <td class="w2">
                            212.50
                        </td>

                        <td class="w3">
                            44.50
                        </td>
                    </tr>
                    <tr class="hui">
                        <td class="w1">
                            其他国家
                        </td>
                        <td class="w1">
                            other
                        </td>

                        <td class="w2">
                            385.00
                        </td>
                        <td class="w3">
                            100.00
                        </td>
                    </tr>
                </table>
            </div>
            <div class="biao" style="display: none" id="kd2">

                <p>
                    EMS一般的运期为5~7个工作日，不同的国家运期略有变动噢！</p>
                <table width="100%" border="0">
                    <tr>
                        <th colspan="2" class="w1">
                            运达地
                        </th>
                        <th colspan="2" class="w2">
                            起重500g及以内
                        </th>

                        <th colspan="2" class="w3">
                            每续重500g或其零数
                        </th>
                    </tr>
                    <tr class="lanmu">
                        <td colspan="2" class="w11">
                            国家/地区
                        </td>
                        <td class="w2">
                            官方原价<span>(￥)</span>

                        </td>
                        <td class="w2">
                            代购折扣价<span>(￥)</span>
                        </td>
                        <td class="w3">
                            官方原价<span>(￥)</span>
                        </td>

                        <td class="w3">
                            代购折扣价<span>(￥)</span>
                        </td>
                    </tr>
                    <tr>
                        <td class="w1">
                            美国
                        </td>

                        <td class="w1">
                            USA
                        </td>
                        <td class="w2 shan">
                            240.00
                        </td>
                        <td class="w2 red">
                            140.00
                        </td>
                        <td class="w3 shan">

                            75.00
                        </td>
                        <td class="w3 red">
                            44.00
                        </td>
                    </tr>
                    <tr class="hui">
                        <td>
                            加拿大
                        </td>

                        <td class="w1">
                            Canada
                        </td>
                        <td class="w2 shan">
                            280.00
                        </td>
                        <td class="w2 red">
                            163.00
                        </td>
                        <td class="w3 shan">

                            75.00
                        </td>
                        <td class="w3 red">
                            44.00
                        </td>
                    </tr>
                    <tr>
                        <td class="w1">
                            法国
                        </td>

                        <td class="w1">
                            France
                        </td>
                        <td class="w2 shan">
                            280.00
                        </td>
                        <td class="w2 red">
                            163.00
                        </td>
                        <td class="w3 shan">

                            75.00
                        </td>
                        <td class="w3 red">
                            44.00
                        </td>
                    </tr>
                    <tr class="hui">
                        <td class="w1">
                            英国
                        </td>

                        <td class="w1">
                            U.K.
                        </td>
                        <td class="w2 shan">
                            280.00
                        </td>
                        <td class="w2 red">
                            163.00
                        </td>
                        <td class="w3 shan">

                            75.00
                        </td>
                        <td class="w3 red">
                            44.00
                        </td>
                    </tr>
                    <tr>
                        <td class="w1">
                            爱尔兰
                        </td>

                        <td class="w1">
                            ireland
                        </td>
                        <td class="w2 shan">
                            280.00
                        </td>
                        <td class="w2 red">
                            163.00
                        </td>
                        <td class="w3 shan">

                            75.00
                        </td>
                        <td class="w3 red">
                            44.00
                        </td>
                    </tr>
                    <tr class="hui">
                        <td class="w1">
                            澳大利亚
                        </td>

                        <td class="w1">
                            Australia
                        </td>
                        <td class="w2 shan">
                            210.00
                        </td>
                        <td class="w2 red">
                            122.00
                        </td>
                        <td class="w3 shan">

                            55.00
                        </td>
                        <td class="w3 red">
                            32.00
                        </td>
                    </tr>
                    <tr>
                        <td class="w1">
                            新西兰
                        </td>

                        <td class="w1">
                            New Zealand
                        </td>
                        <td class="w2 shan">
                            210.00
                        </td>
                        <td class="w2 red">
                            122.00
                        </td>
                        <td class="w3 shan">

                            55.00
                        </td>
                        <td class="w3 red">
                            32.00
                        </td>
                    </tr>
                    <tr class="hui">
                        <td class="w1">
                            德国
                        </td>

                        <td class="w1">
                            Germany
                        </td>
                        <td class="w2 shan">
                            280.00
                        </td>
                        <td class="w2 red">
                            163.00
                        </td>
                        <td class="w3 shan">

                            75.00
                        </td>
                        <td class="w3 red">
                            44.00
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="w11">
                            西欧(Western Europe)
                            <div class="guojia">

                                奥地利/比利时/丹麦/芬兰/希腊/卢森堡/摩纳哥/挪威/西班牙/葡萄牙/瑞典/瑞士/土耳其/马耳他/意大利
                            </div>
                        </td>
                        <td class="w2 shan">
                            280.00
                        </td>
                        <td class="w2 red">
                            163.00
                        </td>
                        <td class="w3 shan">

                            75.00
                        </td>
                        <td class="w3 red">
                            44.00
                        </td>
                    </tr>
                    <tr class="hui">
                        <td colspan="2" class="w11">
                            东南亚(Southeast Asia)
                            <div class="guojia">

                                马来西亚/新加坡/泰国/越南/柬埔寨/菲律宾/印度尼西亚/日本/韩国/蒙古/朝鲜/中国香港/中国澳门/中国台湾</div>
                        </td>
                        <td class="w2 shan">
                            190.00
                        </td>
                        <td class="w2 red">
                            111.00
                        </td>
                        <td class="w3 shan">

                            45.00
                        </td>
                        <td class="w3 red">
                            27.00
                        </td>
                    </tr>
                    <tr>
                        <td class="w1">
                            其他国家
                        </td>

                        <td class="w1">
                            other
                        </td>
                        <td class="w2 shan">
                            445.00
                        </td>
                        <td class="w2 red">
                            259.00
                        </td>
                        <td class="w3 shan">

                            120.00
                        </td>
                        <td class="w3 red">
                            70.00
                        </td>
                    </tr>
                </table>
            </div>
            <div class="biao" style="display: none" id="kd3">
                <p>

                    AIR运期较长，一般的运期为8~15个工作日，建议比较急的用户不要选择此种方式投递。</p>
                <table width="100%" border="0">
                    <tr>
                        <th colspan="2" class="w1">
                            运达地
                        </th>
                        <th class="w2">
                            起重100g及以内
                        </th>

                        <th class="w3">
                            每续重100g或其零数
                        </th>
                    </tr>
                    <tr class="lanmu">
                        <td colspan="2" class="w11">
                            国家/地区
                        </td>
                        <td class="w2">
                            代购折扣价<span>(￥)</span>

                        </td>
                        <td class="w3">
                            代购折扣价<span>(￥)</span>
                        </td>
                    </tr>
                    <tr>
                        <td class="w1">
                            美国
                        </td>

                        <td class="w1">
                            USA
                        </td>
                        <td class="w2">
                            18.00
                        </td>
                        <td class="w3">
                            15.00
                        </td>
                    </tr>

                    <tr class="hui">
                        <td>
                            加拿大
                        </td>
                        <td class="w1">
                            Canada
                        </td>
                        <td class="w2">
                            18.00
                        </td>

                        <td class="w3">
                            15.00
                        </td>
                    </tr>
                    <tr>
                        <td class="w1">
                            法国
                        </td>
                        <td class="w1">
                            France
                        </td>

                        <td class="w2">
                            18.00
                        </td>
                        <td class="w3">
                            15.00
                        </td>
                    </tr>
                    <tr class="hui">
                        <td class="w1">
                            英国
                        </td>

                        <td class="w1">
                            U.K.
                        </td>
                        <td class="w2">
                            18.00
                        </td>
                        <td class="w3">
                            15.00
                        </td>
                    </tr>

                    <tr>
                        <td class="w1">
                            爱尔兰
                        </td>
                        <td class="w1">
                            ireland
                        </td>
                        <td class="w2">
                            18.00
                        </td>

                        <td class="w3">
                            15.00
                        </td>
                    </tr>
                    <tr class="hui">
                        <td class="w1">
                            荷兰
                        </td>
                        <td class="w1">
                            Netherlands
                        </td>

                        <td class="w2">
                            18.00
                        </td>
                        <td class="w3">
                            15.00
                        </td>
                    </tr>
                    <tr>
                        <td class="w1">
                            澳大利亚
                        </td>

                        <td class="w1">
                            Australia
                        </td>
                        <td class="w2">
                            18.00
                        </td>
                        <td class="w3">
                            15.00
                        </td>
                    </tr>

                    <tr class="hui">
                        <td class="w1">
                            新西兰
                        </td>
                        <td class="w1">
                            New Zealand
                        </td>
                        <td class="w2">
                            18.00
                        </td>

                        <td class="w3">
                            15.00
                        </td>
                    </tr>
                    <tr>
                        <td class="w1">
                            德国
                        </td>
                        <td class="w1">
                            Germany
                        </td>

                        <td class="w2">
                            18.00
                        </td>
                        <td class="w3">
                            15.00
                        </td>
                    </tr>
                    <tr class="hui">
                        <td colspan="2" class="w11">
                            西欧(Western Europe)
                            <div class="guojia">

                                奥地利/比利时/丹麦/芬兰/希腊/冰岛/卢森堡/摩纳哥/挪威/西班牙/葡萄牙/瑞典/瑞士/土耳其/马耳他/意大利
                            </div>
                        </td>
                        <td class="w2">
                            18.00
                        </td>
                        <td class="w3">
                            15.00
                        </td>
                    </tr>

                    <tr>
                        <td colspan="2" class="w11">
                            东南亚(Southeast Asia)
                            <div class="guojia">
                                马来西亚/新加坡/泰国/越南/柬埔寨/菲律宾/印度尼西亚/日本/韩国/蒙古/朝鲜/中国香港/中国澳门/中国台湾</div>
                        </td>
                        <td class="w2">
                            14.00
                        </td>

                        <td class="w3">
                            9.00
                        </td>
                    </tr>
                    <tr class="hui">
                        <td class="w1">
                            其他国家
                        </td>
                        <td class="w1">
                            other
                        </td>

                        <td class="w2">
                            20.00
                        </td>
                        <td class="w3">
                            18.00
                        </td>
                    </tr>
                </table>
            </div>
            <div class="biao" style="display: none" id="kd4">

                <p>
                    国内转送一般的运期为2~3个工作日，不同的地区运期略有变动噢！</p>
                <table width="100%" border="0">
                    <tr>
                        <th class="w1">
                            起重500g及以内
                        </th>
                        <th class="w2">
                            每续重500g或其零数
                        </th>

                        <th class="w3">
                            包装费
                        </th>
                    </tr>
                    <tr class="lanmu">
                        <td class="w11">
                            代购折扣价<span>(￥)</span>
                        </td>

                        <td class="w2">
                            代购折扣价<span>(￥)</span>
                        </td>
                        <td class="w3">
                            代购折扣价<span>(￥)</span>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            20.00
                        </td>
                        <td class="w2">
                            9.00
                        </td>
                        <td class="w3">
                            免
                        </td>

                    </tr>
                </table>
            </div>
        </div>
    </div>

<?php include template('footer'); ?>


    </form>

</body>
</html>

