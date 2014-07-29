// JavaScript Document

$(function () {

    function ie() {
        if (navigator.userAgent.indexOf('MSIE') > -1) {
            return false;
        } else {
            return true;
        }
    }

    $('.bannerimg .bannerimg2,.bannerimg .bannerimg3').css({ opacity: 0, zIndex: -50 });
    $('.loginmenu .login .change ul.cutd li').each(function (i) {
        $(this).click(function () {
            clearInterval(banner.set);
            banner.console(i + 1);
        });
    });
    var banner = {
        start: 1,
        stops: 2,
        fixedb: 2, //固定的动画，非后台上传的banner
        VCL: 1000, //速度变换
        zindex: 50,
        lengths: $('.bannerimg li').length,
        set: setInterval(function () {
            banner.stops = banner.start;
            banner.start++;
            banner.console();
        }, 4000),
        console: function (num) {
            if(banner.zindex > 580){
                banner.zindex = 50;  
            }
            ;
            if (num) { //判断是不是点击进入的动画
                this.stops = this.start;
                this.start = num;
                banner.set = setInterval(function () {
                    banner.stops = banner.start;
                    banner.start++;
                    banner.console();
                }, 4000); //重新加载set
            }
            ;
            if (this.start > this.lengths) { //当start的数字超过了banner的个数start为1
                this.start = 1;
            }

            $('.loginmenu .login .change ul.cutd li').removeClass('li-up');
            $('.loginmenu .login .change ul.cutd li:eq(' + (this.start - 1) + ')').addClass('li-up'); //为按钮的切换
            if (!ie()) {
                this['b3'].bstart(); this['b3'].bstop();
            } else {
                if (this.start > this.fixedb) {
                    this['b3'].bstart();
                } else {
                    this['b' + this.start].bstart();
                } //判断本次动画的banner是后台加载的或者是固定的（start）
                if (this.stops > this.fixedb) {
                    this['b3'].bstop();
                } else {
                    this['b' + this.stops].bstop();
                } //判断本次动画的banner是后台加载的或者是固定的（stop）   
            }
        },
        b1: {
            bttop: 37,
            btleft: 0,
            bsstop: 6,
            bsleft: 440, //第一张banner结束显示的位置(正常显示)

            sbttop: 7,
            sbtleft: 0,
            sbstop: 6,
            sbsleft: 510, //第一张banner开始显示的位置(非正常显示)

            bstart: function () {
                $('.bannerimg .bannerimg1').animate({ opacity: 1 }, banner.VCL).css('zIndex', banner.zindex++);
                $('.banner1text').animate({ marginTop: this.bttop + 'px', marginLeft: this.btleft + 'px' }, banner.VCL);
                $('.bannerimg .bannerimg1 span').animate({ marginTop: this.bsstop + 'px', marginLeft: this.bsleft + 'px' }, banner.VCL);
            },
            bstop: function () {
                $('.bannerimg .bannerimg1').animate({ opacity: 0 }, banner.VCL);
                $('.banner1text').animate({ marginTop: this.sbttop + 'px', marginLeft: this.sbtleft + 'px', opacity: '1' }, banner.VCL);
                $('.bannerimg .bannerimg1 span').animate({ marginTop: this.sbstop + 'px', marginLeft: this.sbsleft + 'px' }, banner.VCL);
            }
        },

        b2: {
            bttop: 39,
            btleft: 0,
            bsstop: 0,
            bsleft: 160, //第二张banner结束显示的位置(正常显示)

            sbttop: 39,
            sbtleft: -40,
            sbstop: 0,
            sbsleft: 230, //第二张banner开始显示的位置(非正常显示)

            bstart: function () {
                $('.bannerimg .bannerimg2').animate({ opacity: 1 }, banner.VCL).css('zIndex', banner.zindex++);
                $('.bannertext2').animate({ marginTop: this.bttop + 'px', marginLeft: this.btleft + 'px' }, banner.VCL);
                $('.bannerimg .bannerimg2 .bannerbg2 .people').animate({ marginTop: this.bsstop + 'px', marginLeft: this.bsleft + 'px' }, banner.VCL);


            },
            bstop: function () {
                $('.bannerimg .bannerimg2').animate({ opacity: 0 }, banner.VCL);
                $('.bannertext2').animate({ marginTop: this.sbttop + 'px', marginLeft: this.sbtleft + 'px', opacity: '1' }, banner.VCL);
                $('.bannerimg .bannerimg2 .bannerbg2 .people').animate({ marginTop: this.sbstop + 'px', marginLeft: this.sbsleft + 'px' }, banner.VCL);
            }
        },

        b3: {
            //后台提交的banner变换方式
            bstart: function () {
                $('.bannerimg li:eq(' + (banner.start-1)+')').animate({ opacity: 1 }, banner.VCL).css('zIndex', banner.zindex++);
            },
            bstop: function () {
                $('.bannerimg li:eq(' + (banner.stops-1)+')').animate({ opacity: 0 }, banner.VCL);
            }
        }
    };

    if (ie()) {
        banner.set;
        banner.b1.bstart();

    } else {
        $('.banner1text').css('marginTop', banner.b1.bttop);
        $('.bannerimg .bannerimg1 span').css('marginLeft', banner.b1.bsleft);

        $('.bannertext2').css('marginLeft', banner.b2.btleft);
        $('.bannerimg .bannerimg2 .bannerbg2 .people').css('marginLeft', banner.b2.bsleft);

    }
})