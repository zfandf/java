<?php defined('ZZQSS') or exit('Access Denied'); ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<link href="<?php echo TPL;?>css/NewTopFoot.css" rel="Stylesheet" type="text/css">
<link type="text/css" rel="stylesheet" href="<?php echo TPL;?>css/AddItemPanel.css">
<link type="text/css" id="styleName" rel="stylesheet" href="<?php echo TPL;?>css/blue/color.css"/ > 
<link type="text/css" rel="stylesheet" href="<?php echo TPL;?>css/selectaddress.css">
    <script type="text/javascript" src="<?php echo TPL;?>js/jquery-1.4.1.min.js"></script>
    <script type="text/javascript" src="<?php echo TPL;?>js/jQuery.Extend.js"></script>
    <script src="<?php echo TPL;?>js/jQuery.Drag.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="<?php echo TPL;?>js/jquery.cookies.2.1.0.min.js"></script>
    <script src="<?php echo TPL;?>js/Gobal.js" type="text/javascript"> </script>
    <script type="text/javascript" src="<?php echo TPL;?>js/wdggcGobal.js"></script>
    <script type="text/javascript" src="<?php echo TPL;?>js/Country.js"></script>



<title>
管理地址簿 -<?php echo $cfg_site_name;?>
</title></head>

<body>


    <form id="aspnetForm" action="ShoppingRecords.aspx?t=1" method="post" name="aspnetForm">

<?php include template('header'); ?>

    <div class="admin">
        <div class="ding">
            <div class="shouye">
                <a href="<?php echo url("m.php"); ?>" title="我的会员中心"></a>
            </div>
            <div class="lb">
                <div class="weizhi">
                    <b>当前位置：</b><a href="<?php echo url("m.php"); ?>">会员中心</a><span>&gt;</span>管理地址簿 </div>
                
<div class="shezhi">
                    <p>
                        <a href="<?php echo url("m.php"); ?>">我的会员中心</a><span>|</span>风格设置：</p>
                    <ul>
                        <li onClick="changeStyle('orange')" class="mypanliS1"></li>
                        <li onClick="changeStyle('grey')" class="mypanliS2"></li>
                        <li onClick="changeStyle('blue')" class="mypanliS3"></li>
                    </ul>
                </div>
            </div>
        </div>

<?php include template('member_left'); ?>
        
        
        <div id="ListPanel" class="fill">

  </div>
        
        <div class="yj">
      </div>
    </div>


    <script type="text/javascript">
        $(function() {
            list = $.getJSON("/m.php?name=myaddress&action=get&r=" + new Date(), init);
        });
        var num = 0;
        var list = [];
        var defaultindex=<?php echo $defaid;?>;
//<select><option>Johor</option><option>Kedah</option><option>Kelantan</option></select>
//
        var dPanel = '<div id="addressA" class="address s2"><div class="box"><table><tr><td class="z">收 货 人 :</td><td class="c"><input type="text" size="28" /><p class="red">*</p></td><td class="z"> </td><td class="c"> </td></tr><tr><td class="z">所在国家 :</td><td class="c"><select>' + COUNTRY.ToSelect(0) + '</select><p class="red">*</p></td><td class="z">邮政编码 :</td><td class="c"><input type="text" size="28" /><p class="red">*</p></td></tr><tr><td class="z">所在城市 :</td><td class="c"><input type="text" value="" size="28" /><p class="red">*</p></td><td class="z">电话号码 :</td><td class="c"><input type="text" size="28" /><p class="red">*</p></td></tr><tr><td class="z">详细地址 :</td><td colspan="3"><input type="text" size="86" /><p class="red">*</p></td></tr></table><div class="chaozuo"><ul><li><a onclick="modify(\'A\')" href="javascript:;">确认添加</a></li></ul></div></div></div>';
        var init = function(data) { list = data; num = list.length; var s = ""; if (num <= 0) { add(); return; } $.each(data, function(i, d) { var t = '<div index="' + i + '" id="address' + i + '" class="address"><div class="box"><table><tr><td class="z">收 货 人 :</td><td class="c">' + d.Consignee + '</td><td class="z"> </td><td class="c"> </td></tr><tr><td class="z">所在国家 :</td><td class="c">' + d.CountryName + '</td><td class="z">邮政编码 :</td><td class="c">' + d.Postcode + '</td></tr><tr><td class="z">所在城市 :</td><td class="c">' + d.CityName + '</td><td class="z">电话号码 :</td><td class="c">' + d.Telephone + '</td></tr><tr><td class="z">详细地址 :</td><td colspan="3">' + d.Address + '</td></tr></table><div class="chaozuo" id="oper' + i + '"><ul><li><a href="javascript:;" onclick="setDefault(' + i + ');">设置为常用收货地址</a></li><li><a href="javascript:;" onclick="edit(' + i + ');">编辑</a></li><li><a href="javascript:;" onclick="del(' + i + ');">删除</a></li></ul></div></div></div>'; if (defaultindex == d.ID) { defaultindex = i; s = t + s; } else s += t; }); $("#ListPanel").html(s); if (num < 10) add(); showDefault(defaultindex); }
 
        function cancel(i) {
            $("#address" + i).attr("class", "address").html('<div class="box"><table><tr><td class="z">收 货 人 :</td><td class="c">' + list[i].Consignee + '</td><td class="z"> </td><td class="c"> </td></tr><tr><td class="z">所在国家 :</td><td class="c">' + list[i].CountryName + '</td><td class="z">邮政编码 :</td><td class="c">' + list[i].Postcode + '</td></tr><tr><td class="z">所在城市 :</td><td class="c">' + list[i].CityName + '</td><td class="z">电话号码 :</td><td class="c">' + list[i].Telephone + '</td></tr><tr><td class="z">详细地址 :</td><td colspan="3">' + list[i].Address + '</td></tr></table><div class="chaozuo" id="oper' + i + '"><ul><li><a href="javascript:;" onclick="setDefault(' + i + ');">设置为常用收货地址</a></li><li><a href="javascript:;" onclick="edit(' + i + ');">编辑</a></li><li><a href="javascript:;" onclick="del(' + i + ');">删除</a></li></ul></div></div>');
            if (defaultindex == i) showDefault(i);
        }
 
        function del(i) {
            if (!confirm("您确定要删除这个地址吗?")) {
                return;
            }
            $.ajax({
                type: "POST",
                url: "/m.php?name=myaddress&action=del",
                dataType: "json",
                contentType: "application/json;utf-8",
                data: "{'id':" + list[i].ID + "}",
                timeout: 8000,
                error: function() { alert("error"); },
                success: function(r) { if (r.d == "success") { $("#address" + i).remove(); num--; if (num <= 0) add(); } else { alert("删除失败！"); } }
            });
        }

        function showDefault(i) { if (i < 0 || i > list.length) return; var index = $(".s1").attr("index"); $(".s1").removeClass("s1").find("ul li:eq(0)").html('<a href="javascript:;" onclick="setDefault(' + index + ');">设置为常用收货地址</a>'); $("#address" + i).addClass("s1"); $("#oper" + i).find("ul li:eq(0)").html('<a href="javascript:;" class="z_x">常用收货地址</a>'); }
        function setDefault(i) {
            $.ajax({
                type: "POST",
                url: "/m.php?name=myaddress&action=setdefault",
                dataType: "json",
                contentType: "application/json;utf-8",
                data: "{'id':" + list[i].ID + "}",
                timeout: 8000,
                error: function() { alert("网络错误，请稍后再试！"); },
                success: function(r) { if (r.d == "success") { defaultindex = i; showDefault(i); return } if (r.d == "fail") { alert("修改失败"); return; } if (r.d == "noLogin") { alert("请先登录"); } }
            });
        }
 
        function modify(i) {
            var id = (i != "A" ? list[i].ID : 0);
            var p = $("#address" + i);
            var name = $.trim(p.find("table tr:eq(0) input").val());
            var country = p.find("select").val();
            var zip = $.trim(p.find("table tr:eq(1) input:text").val());
            var city = $.trim(p.find("table tr:eq(2) input:eq(0)").val());
            var phone = $.trim(p.find("table tr:eq(2) input:eq(1)").val());
            var address = $.trim(p.find("table tr:eq(3) input").val());
 
            if (name.length <= 0) {
                if (p.find("table tr:eq(0) input").next("p").length <= 0)
                    p.find("table tr:eq(0) input").after('<p class="red">请输入姓名</p>');
                else
                    p.find("table tr:eq(0) input").next("p").text("请输入姓名");
                return;
            }
            if (country == "0") {
                if (p.find("select").next("p").length <= 0)
                    p.find("select").after('<p class="red">请选择国家</p>');
                else
                    p.find("select").next("p").text("请选择国家");
                return;
            }
            if (zip.length <= 0) {
                if (p.find("table tr:eq(1) input:text").next("p").length <= 0)
                    p.find("table tr:eq(1) input:text").after('<p class="red">请输入邮编</p>');
                else
                    p.find("table tr:eq(1) input:text").next("p").text("请输入邮编");
                return;
            }
            if (city.length <= 0) {
                if (p.find("table tr:eq(2) input:eq(0)").next("p").length <= 0)
                    p.find("table tr:eq(2) input:eq(0)").after('<p class="red">请输入城市</p>');
                else
                    p.find("table tr:eq(2) input:eq(0)").next("p").text("请输入城市");
                return;
            }
            if (phone.length <= 0) {
                if (p.find("table tr:eq(2) input:eq(1)").next("p").length <= 0)
                    p.find("table tr:eq(2) input:eq(1)").after('<p class="red">请输入联系电话</p>');
                else
                    p.find("table tr:eq(2) input:eq(1)").next("p").text("请输入联系电话");
                return;
            }
            if (address.length <= 0) {
                if (p.find("table tr:eq(3) input").next("p").length <= 0)
                    p.find("table tr:eq(3) input").after('<p class="red">请输入详细地址</p>');
                else
                    p.find("table tr:eq(3) input").next("p").text("请输入详细地址");
                return;
            }
            if (i != "A" && (list[i].Consignee + list[i].CountryName + list[i].Postcode + list[i].CityName + list[i].Telephone + list[i].Address == name + country + zip + city + phone + address)) {
                cancel(i); return;
            }
 
            $.ajax({
                type: "POST",
                url: "/m.php?name=myaddress&action=add",
                dataType: "json",
                contentType: "application/json;utf-8",
                data: '{\'id\':' + id + ',\'consignee\':"' + name.replace(/'/g, "\\'").replace(/"/g, "\\\"") + '",\'country\':"' + country.replace(/'/g, "\\'").replace(/"/g, "\\\"") + '",\'city\':"' + city.replace(/'/g, "\\'").replace(/"/g, "\\\"") + '",\'address\':"' + address.replace(/'/g, "\\'").replace(/"/g, "\\\"") + '",\'teltphone\':"' + phone.replace(/'/g, "\\'").replace(/"/g, "\\\"") + '",\'zip\':"' + zip.replace(/'/g, "\\'").replace(/"/g, "\\\"") + '"}',
                timeout: 8000,
                error: function() { alert("网络错误，请稍后再试！"); },
                success: function(r) {
                    if (i != "A" && r.d > 0) {
                        list[i].Consignee = name;
                        list[i].CountryName = country;
                        list[i].Postcode = zip;
                        list[i].CityName = city;
                        list[i].Telephone = phone;
                        list[i].Address = address;
                        cancel(i);
                    }
                    if (i == "A" && r.d > 0) {
                        var j = list.length;
                        list[j] = { ID: r.d, Consignee: name, CountryName: country, Postcode: zip, CityName: city, Telephone: phone, Address: address };
                        $("#addressA").remove();
 
                        if ($(".address:last").length > 0)
                            $(".address:last").after('<div index="' + j + '" id="address' + j + '" class="address"></div>');
                        else
                            $("#ListPanel").prepend('<div index="' + j + '" id="address' + j + '" class="address"></div>');
                        if (++num < 10)
                            add();
                        cancel(j);
                    }
                }
            });
        }
 
        function edit(i) {
            $("#address" + i).attr("class", "address s2").html('<div class="box"><table><tr><td class="z">收 货 人 :</td><td class="c"><input type="text" /></td><td class="z"> </td><td class="c"> </td></tr><tr><td class="z">所在国家 :</td><td class="c"><select>' + COUNTRY.ToSelect(list[i].CountryName) + '</select></td><td class="z">邮政编码 :</td><td class="c"><input type="text" /></td></tr><tr><td class="z">所在城市 :</td><td class="c"><input type="text" /></td><td class="z">电话号码 :</td><td class="c"><input type="text" /></td></tr><tr><td class="z">详细地址 :</td><td colspan="3"><input size="86" type="text" /></td></tr></table><div class="chaozuo" id="oper' + i + '"><ul><li><a href="javascript:;" onclick="modify(' + i + ');">提交修改</a></li><li><a href="javascript:;" onclick="cancel(' + i + ');">取消</a></li></ul></div></div>');
            var p = $("#address" + i);
            p.find("table tr:eq(0) input").val(list[i].Consignee);
            p.find("table tr:eq(1) input:text").val(list[i].Postcode);
            p.find("table tr:eq(2) input:eq(0)").val(list[i].CityName);
            p.find("table tr:eq(2) input:eq(1)").val(list[i].Telephone);
            p.find("table tr:eq(3) input").val(list[i].Address);
            p.find("input").each(function() { $(this).focus(function() { $(this).next("p").remove(); }); });
            p.find("select").change(function() { $(this).next("p").remove(); });
 
        }
 
        function add() {
            if ($("#addressA").length > 0) return;
            if (num > 9) { alert("您的地址簿最多只能记录10个收货地址。"); return; }
            if (num <= 0)
                $("#ListPanel").html(dPanel);
            else
                $(".address:last").after(dPanel);
 
            $("#addressA input:eq(0)").focus();
            $("#addressA input").each(function() { $(this).focus(function() { if ($(this).next("p").text() != "*") $(this).next("p").text("*"); }); });
            $("#addressA select").change(function() { if ($(this).next("p").text() != "*") $(this).next("p").text("*"); });
        }
    </script>

    
<?php include template('footer'); ?>

    </form>
</body>
</html>