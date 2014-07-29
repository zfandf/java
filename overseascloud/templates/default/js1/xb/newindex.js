// JavaScript Document
var isIE = !!window.ActiveXObject;
var isIE6 = isIE && !window.XMLHttpRequest;
var height = 485, i = 0, sp = 0;
function u() {
    if (document.compatMode == "BackCompat") {
        cWidth = document.body.clientWidth;
        cHeight = document.body.clientHeight;
        sWidth = document.body.scrollWidth;
        sHeight = document.body.scrollHeight;
        sLeft = document.body.scrollLeft;
        sTop = document.body.scrollTop;
    } else {
        cWidth = document.documentElement.clientWidth;
        cHeight = document.documentElement.clientHeight;
        sWidth = document.documentElement.scrollWidth;
        sHeight = document.documentElement.scrollHeight;
        sLeft = document.documentElement.scrollLeft == 0 ? document.body.scrollLeft : document.documentElement.scrollLeft;
        sTop = document.documentElement.scrollTop == 0 ? document.body.scrollTop : document.documentElement.scrollTop;
    }
    if (sTop == 0) {
        sp++;
        if (sp == 5) {
            $('#rightMenu .top,#rightMenu ul,#rightMenu .top1').fadeOut(400);
        }
    } else if (sTop != 0) {
        sp = 0;
        $('#rightMenu .top,#rightMenu ul,#rightMenu .top1').fadeIn(400);
    }
    if (sTop > height) {
        document.getElementById("rightMenu").style.marginTop = "-" + height + "px";
    } else if (sTop < height) {
        document.getElementById("rightMenu").style.marginTop = "-" + sTop + "px";
    }

    if (isIE) {
        if (isIE6) {
            $('.Track_message').css('marginTop', (sTop - 204) + "px");
            if (sTop > height) {
                document.getElementById("rightMenu").style.marginTop = (sTop - height) + "px";
            }
            document.getElementById("rightMenu").style.position = "absolute";
        } 
    }
};


var newpanli = {};
$(function () {
    $('#Panli_Customer').remove();

    var urlgg = $('.loginmenu .login .change .gg li').length;
    $('.loginmenu .login .change ul.gg li:last').after("<li>" + $('.loginmenu .login .change ul.gg li:first').html() + "</li>");
    var k = 0;
    newpanli.gg = function gg() {
        k++;
        if (k % urlgg == 1 && k > urlgg) {
            $('.loginmenu .login .change ul.gg').css('marginTop', '0');
            k = 1;
        }
        $('.loginmenu .login .change ul.gg').animate({ marginTop: -k * 27 + "px" }, 300);
    };
    var ggs = setInterval("newpanli.gg()", 5000);
    $('.loginmenu .login .change ul.gg').hover(function () { clearInterval(ggs); },
		                                              function () { ggs = setInterval("newpanli.gg()", 5000); });
    //公告

    $('#rightMenu .top,#rightMenu ul').hide();
    var b1 = setInterval("u()", 10);
    //回到顶部

    $('.help-text ul:eq(0) li:last').css('border', 'none');
    $('.help-text ul:eq(1) li:last').css('border', 'none');

    $('.logins .help-text h3').each(function (i, e) {
        $(this).mouseover(function () {
            $('.logins .help-text h3').removeClass('up');
            $(this).addClass('up');
            $('.logins .help-text ul').css('display', 'none');
            $('.logins .help-text ul:eq(' + i + ')').css('display', 'block');
        });
    }); //banner常见问题和推荐切换

    var hid = $('#hidLevelColor').val();
    $('#vips .in-process-left ul li').hover(function () {
        $(this).css('border-color', hid).find('.p').css('backgroundColor', hid).css('border-color', hid).css('color', '#ffffff').find('a').css('color', 'yellow');
        $(this).find('.bottombgs').css('background', hid);
        $(this).find('.right').css('backgroundColor', hid).attr('id', 'vip-up');
    }, function () {
        $(this).css('border-color', '#e0e0e0').find('.p').css('border-color', '#e0e0e0').css('backgroundColor', '').css('color', '#787879').find('a').css('color', '#71a8cf'); ;
        $(this).find('.bottombgs').css('background', 'url(/templates/default/images/xb/f6.jpg)').css('backgroundRepeat', 'no-repeat');
        $(this).find('.right').css('backgroundColor', '').attr('id', '#');
    }); //vip显示

    var len = $('.bannerimg li').length;
    var tex = '';
    for (var il = 0; il < len; il++) {
        tex += '<li ';
        if (il == 0) {
            tex += 'class="li-up"';
        }
        tex += ' >&nbsp;&nbsp;&nbsp;</li> ';
    }
    $('.cutd').html(tex);

    $('.in-process-left ul.left li').hover(function () { $(this).css('backgroundColor', '#ffc'); }, function () { $(this).css('backgroundColor', ''); });
    $('.in-process-right ul.in-right-ul li').hover(function () { $(this).css('backgroundColor', '#ffc'); }, function () { $(this).css('backgroundColor', ''); });
    //正在拼高亮显示

    $('#aboutlike .in-process-left .topmenu ul li:eq(0),#aboutlike .in-process-left .topmenu ul li:eq(1)').css('border-color', '#fff');
    $('#aboutlike .in-process-left ul.left2:eq(0)').css('display', 'block');
    $('#aboutlike .in-process-left .topmenu ul li').each(function (i, e) {
        $(this).mouseover(function () {
            $('#aboutlike .in-process-left ul.left2').css('display', 'none');
            $('#aboutlike .in-process-left ul.left2:eq(' + i + ')').css('display', 'block');
            var ab = $('#aboutlike .in-process-left .topmenu ul li');
            ab.css('border-color', '#dddddd');
            $('#aboutlike .in-process-left .topmenu ul li a').removeClass('hover');
            $(this).find('a').addClass('hover');
            $(this).css('border-color', '#fff');
            if (i != (ab.length - 1)) {
                $('#aboutlike .in-process-left .topmenu ul li:eq(' + (i + 1) + ')').css('border-left-color', '#fff');
            }
            $('#aboutlike .in-process-left .topmenu ul li:eq(0)').css('border-color', '#fff');
        });
    }); //亲们喜欢类别切换



    var ulnum = $('.in-process-right ul.in-right-ul').length;
    var nums = parseInt($('.in-process-right .top .num').text());
    $('.in-process-right .in-left').click(function () { newpanli.inleft(true); });
    $('.in-process-right .in-right').click(function () { newpanli.inleft(false); });
    


    newpanli.so = function (poi) {
        var px1;
        if (typeof poi === "string") {
            px1 = $('#' + poi).offset().top;
        } else {
            px1 = poi;
        }
        $('html,body').animate({ scrollTop: px1 }, 800);
    };

    var ileft = setInterval("newpanli.inleft(true)", 10000);
    newpanli.inleft = function (s) {
        if (s) {
            nums++;
            if (nums > ulnum - 1) {
                nums = 1;
            }
        } else {
            nums--;
            if (nums <= 0) {
                nums = 3;
            }
        }
        $('.num').text(nums);
        var text = $('.in-process-right .in-right-ul:eq(' + nums + ')').html();
        $('.in-process-right .in-right-ul:eq(0)').html(text);
        $('.in-process-right .in-right-ul li').hover(function () {
            $(this).find('span a').css('display', 'inline');
            $(this).css('backgroundColor', '#ffc');
        }, function () {
            $(this).find('span a').css('display', 'none');
            $(this).css('backgroundColor', '');
        }); //大家都在买（我要购）显示
    };
    $('.in-process-right .in-right-ul:eq(0)').html($('.in-process-right .in-right-ul:eq(' + nums + ')').html());
    $('.in-process-right .in-right-ul li').hover(function () {
        $(this).find('span a').css('display', 'inline');
        $(this).css('backgroundColor', '#ffc');
    }, function () {
        $(this).find('span a').css('display', 'none');
        $(this).css('backgroundColor', '');
    }); //大家都在买（我要购）显示

});






