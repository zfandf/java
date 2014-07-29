﻿var remarkPanel = "<div class=\"beizhu\"><div style=\"width: 270px; overflow: hidden; float: left;\"><div class=\"if\"><label id=\"noremarkLb\"><input id=\"noremark\" type=\"checkbox\" />无特殊商品备注说明，请勾选此项</label></div><textarea id=\"remarkContent\" cols=\"\" rows=\"\"></textarea><dl><dt><input id=\"remarkSubmit\" type=\"button\" value=\"提交\" /></dt><dd><input id=\"remarkClose\" type=\"button\" onclick=\"closeRemarkPanel();\" value=\"关闭\" /></dd></dl></div><img src=\"/images/jiantou.gif\" /></div>";

var orderremarkPanel = "<div class=\"beizhu\"><div style=\"width: 270px; overflow: hidden; float: left;\"><div class=\"if\"><label id=\"noremarkLb\">订单提示</label></div><textarea id=\"remarkContent\" cols=\"\" rows=\"\"></textarea><dl><dt><input id=\"remarkSubmit\" type=\"button\" value=\"提交\" /></dt><dd><input id=\"remarkClose\" type=\"button\" onclick=\"closeRemarkPanel();\" value=\"关闭\" /></dd></dl></div><img src=\"/images/jiantou.gif\" /></div>";

var vPanelIndex = 0;
var cacheID = [];
function encode(s) {
    return s.replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;").replace(/([\\\.\*\[\]\(\)\$\^])/g, "\\$1");
}
function decode(s) {
    return s.replace(/\\([\\\.\*\[\]\(\)\$\^])/g, "$1").replace(/&gt;/g, ">").replace(/&lt;/g, "<").replace(/&amp;/g, "&");
}
//全选
function CheckAll(isChecked) {
    $(".products", $("#vPanel" + vPanelIndex)).each(function() { $(this).attr("checked", isChecked) });
	showOrderInfo();
}

function FCheck() {
    $(".products", $("#vPanel" + vPanelIndex)).each(function() { this.checked = !this.checked; });
	showOrderInfo();
}

function del(id, type, num) {
    if (type == 0 && (num > 0 ? !confirm("该商品已经有" + num + "个人拼单咯，确定要删除吗？") : !confirm("您确定要删除此商品吗"))) {
        return false;
    }
    if (type == 1 && !confirm("该商品是拼单商品，免国内运费哦，确定要删除吗？")) {
        return false;
    }
    $.ajax({ type: "POST",
        url: "/m.php?name=songlilist&action=del",
        dataType: "json",
        contentType: "application/json;utf-8",
        data: "{'gid':" + id + "}",
        timeout: 10000,
        error: function() { alert('删除失败！！'); },
        success: function(resault) {
            if (resault != 'OK') {
                alert('删除失败！');
            }
            else if (resault == 'OK') {
                alert('删除成功！');
                $("." + vPanelIndex + "deltr_" + id).remove();
                 if ($("#vPanel" + vPanelIndex + " tr").length <= 0) window.location = window.location;
            }
        }
    });
}

function delFProduct(id) {
    if (!confirm("您确定要删除此赠品吗？")) return false;
    $.ajax({ type: "POST",
        url: "/App_Services/CartProductProfile.asmx/RemoveFreeProduct",
        dataType: "json",
        contentType: "application/json;utf-8",
        data: "{id:" + id + "}",
        timeout: 10000,
        error: function() { alert('网络错误，请稍后再试！'); },
        success: function(r) {
            if (r.d == "success") {
                alert('删除成功！您的积分已经退入您的帐户，请查收！');
                $(".lipin,.free").remove();
            } else {
                alert('删除失败！');
                return false;
            }
        }
    });
}

function changePanel(i) {
    $(".xk li").removeAttr("class");
    $(".xk li:eq(" + i + ")").attr("class", "t");
    $(".vPanel").hide();
    $("#vPanel" + i).show();
    if ($("#vPanel" + i + " .kong").length > 0 || i == 2) { $(".di").hide(); $("#prompt").hide(); }
    else { $(".di").show(); $("#prompt").show(); }
    vPanelIndex = i;
}

function searchID() { clearSearchRes(); var id = $("#sPrgid").val(); if ($.trim(id).length <= 0) { alert("请输入要搜索的ID"); return; } var $r = $("#" + vPanelIndex + "v" + id + " .w2"); if ($r.length > 0) { $r.html("<font id='tempSearch' style=\"color:#ff0000;background:#ffff00\">" + $r.html() + "</font>"); $(window).scrollTop($r.offset().top); } else { alert("没有找到匹配的商品"); return; } }

function clearSearchRes() { $("#tempSearch").parent().html($("#tempSearch").html()); }

function searchName() {
    var s = $.trim($("#sProName").val());
    if (s.length <= 0) { alert("请输入搜索商品名"); return false; }
    s = encode(s);
    var obj = $("#vPanel" + vPanelIndex);
    var t = obj.html().replace(/<font\s+color=.?#ff0000.?>([^<>]*?)<\/font>/i, "$1");
    obj.html(t);
    t = obj.html();
    var r = new RegExp('(<td class=[\'"]??w3[\'"]??>(?:.|\n)*?<a.*?>(?:.|\n)*?)(' + s + ')((?:.|\n)*?</a>(?:.|\n)*?</td>)', 'gi');

    t = t.replace(r, "$1<font color='#ff0000'>$2</font>$3");
    obj.html(t);
    var res = $("font:eq(0)", $("#vPanel" + vPanelIndex));
    if (res.length <= 0) { alert("没有找到匹配的商品"); return; }
    $(window).scrollTop(res.offset().top);

}


function showRemarkPanel(id, type, dom) {
    $(".beizhu").remove(); $(dom).before(remarkPanel); $("#remarkContent").val($("#remark" + id).val()); if (type) { $("#noremark").click(function() { if (this.checked) { $("#remarkContent").attr("disabled", "disabled").val("我对此商品无任何特殊备注。"); } else { $("#remarkContent").removeAttr("disabled").val($("#remark" + id).val()); } }); $("#remarkSubmit").click(function() { upRemark(id, $.trim($("#remarkContent").val())); }); } else { $("#remarkContent").attr("disabled", "disabled").css({ background: "#eeeeee", color: "#bbbbbb", border: "#bbbbbb solid 1px" }); $("#noremarkLb").css({ color: "#bbbbbb" }); $("#noremarkLb input").attr("disabled", "disabled"); $("#remarkSubmit").remove(); }
    $(".beizhu").animate({ width: "282px", marginLeft: "-284px" }, 300, function() { });
}
function showorderRemark(id, dom) {
    $(".beizhu").remove(); $("#orderremark" + id, $("#vPanel" + vPanelIndex)).after(orderremarkPanel); $("#remarkContent").val($("#orderremark" + id).val()); $("#remarkContent").attr("disabled", "disabled").css({ background: "#eeeeee", color: "#bbbbbb", border: "#bbbbbb solid 1px" }); $("#noremarkLb").css({ color: "#bbbbbb" }); $("#noremarkLb input").attr("disabled", "disabled"); $("#remarkSubmit").remove(); 
    $(".beizhu").animate({ width: "282px", marginLeft: "-254px" }, 300, function() { });
}


function showoRemark(id) {
 $("#orderremark"+id).show();
}

function closeRemarkPanel() { if ($(".beizhu").length > 0) { $(".beizhu").animate({ width: "0", marginLeft: "-2px" }, 300, function() { $(this).remove(); }); } }
function upRemark(id, content) {
    $.ajax({ type: "POST",
        url: "/m.php?name=orderlist&action=upremark",
        dataType: "json",
        contentType: "application/json;utf-8",
        data: "{'remark':'" + content + "','gid':" + id + "}",
        timeout: 6000,
        error: function() {
            alert("修改备注失败！");
        },
        success: function(resault) {
            if (resault == 'OK') {
                closeRemarkPanel();
                $("#remark" + id).val(content);
                alert("修改备注成功！");
            }
            else if (resault == 404) {
                alert("当前状态不能更新备注！");
            }
        }
    });
}

function submitToDeliverType() {
    if ($("#vPanel1 .kong").length > 0) { alert("您暂时还没有商品可以提交运送哦！"); return false; }
    var pros = $(".products:checked", $("#vPanel" + vPanelIndex));
    var ids = "";
    if (pros.length > 0) {
        pros.each(function(i, d) { ids += d.value + "," });
    }
    var fid = 0;
    var fprod = $(".FreeProduct:checked", $("#vPanel" + vPanelIndex));
    if (fprod.length > 0)
        fid = fprod.val();
    if (fid == 0 && pros.length <= 0) {
        alert("您还没有选择要提交运送的商品哦！");
        return false;
    }
	$("#gids").val(ids.substring(0, ids.length - 1));//放入隐藏域
	return true;
	/*
    $.ajax({
        type: "POST",
        url: "",
        dataType: "json",
        contentType: "application/json;utf-8",
        data: "{IDs:'" + ids.substring(0, ids.length - 1) + "',fid:" + fid + "}",
        timeout: 10000,
        error: function() { alert('提交失败！') },
        success: function(resault) {
            if (resault.d) {
                window.location = '/mypanli/DeliverType/ValidateProducts.aspx';
            }
            else {
                alert('提交运送失败！');
            }
        }
    });
	*/
}