//获取当前可视高度方法，全局用
function getViewportHeight() { if (window.innerHeight != window.undefined) { return window.innerHeight } if (document.compatMode == "CSS1Compat") { return document.documentElement.clientHeight } if (document.body) { return document.body.clientHeight } return window.undefined }

$(function () {
    window.Panli = {};
    var d = document;
    window.Panli.Message = {
        Panel: {},
        init: function () {
            window.Panli.Message.Panel = $('<div class="Operation_cg"> </div>');
            jQuery(d.body).append(window.Panli.Message.Panel);
        },
        show: function (mess) {
            if (!window.Panli.Message.Panel.text)
                window.Panli.Message.init();
            window.Panli.Message.Panel.text(mess).stop(true, true).show();
            window.Panli.Message.Panel.fadeOut(2500);
        }
    }

    //免邮商家层切换
    $('#FreeSiteBtn,#FreeSitePanel').hover(function () { $('#FreeSiteBtn').addClass('mysj_on'); $('#FreeSitePanel').show(); }, function () { $('#FreeSiteBtn').removeClass('mysj_on'); $('#FreeSitePanel').hide(); });

    //标签高亮
    var url = window.location.href;
    url = url.toLowerCase();
    if (url.indexOf("/news/") > 0) {
        $("#see").addClass("xt");
    } else if (url.indexOf("/panlirecommend/") > 0) {
        $("#PanliRecommend").addClass("xt");
    } else if (url.indexOf("/pinindex.php") > 0) {
        $("#Piece").addClass("xt").next("b").remove();
    } else if (url.indexOf("/zhe.php") > 0) {
        $("#GroupPurchasing").addClass("xt").children("b").remove();
    } else if (url.indexOf("/fen.php") > 0) {
        $("#cowry").addClass("xt").children("b").remove();
    } else if (url.indexOf("/news.php") > 0) {
        $("#vip").addClass("xt").children("b").remove();
    } else {
        $("#Default").addClass("xt");
    }
    if (url.indexOf("/special/") > 0) { $('#special').addClass('orange'); }
    else if (url.indexOf("/discount/") > 0) { $('#discount').addClass('orange'); }
    else if (url.indexOf("/free_postage/") > 0) { $('#free_postage').addClass('orange'); }

    //常用工具
    $("#Panli_Tools,#Panli_ToolsList").hover(function () { $("#Panli_ToolsList").show(); }, function () { $("#Panli_ToolsList").hide(); });



 
    });

