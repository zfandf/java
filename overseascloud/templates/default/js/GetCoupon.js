﻿var flag = false;
function getCoupon(price) {
    if (flag) return;
    var score = parseInt($("#userScore").text());
    var num = parseInt($("#c" + price).val().replace(/^0/, ''));
    if (score < price * num * 100) { alert("您的积分不足，无法兑换优惠券"); return; }
    if (!confirm("您确定要兑换吗？")) return;
    flag = true;

    $.ajax({
        type: "POST",
        url: "/ajax/coupon_ajax.php?action=getcoupon",
        dataType: "json",
        contentType: "application/json;utf-8",
        data: "{'num':" + num + ",'price':" + price + "}",
        timeout: 8000,
        error: function() { alert("兑换失败，请稍后再试"); flag = false; },
        success: function(res) {
            flag = false;
            var s = res;
            switch (s) {
                case "OK": getCouponSuccess(num, price); break;
                default: alert(s);break;
            }
        }
    });
}

function getCouponSuccess(n, p) {
    $("#c" + p).val(1);
    $("#userCouponNum").text(parseInt($("#userCouponNum").text()) + n);
    $("#userScore").text(parseInt($("#userScore").text()) - p * n * 100);
    $("#sPrice").text(p);
    $("#sNum").text(n);
    $("#useScore").text(p * n * 100);
    $("#userScores").text($("#userScore").text());
    $("#couponPanel1").hide();
    $("#couponPanel2").show();
}