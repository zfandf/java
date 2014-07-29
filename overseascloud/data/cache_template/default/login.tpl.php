<?php defined('ZZQSS') or exit('Access Denied'); ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1">
<title>用户登陆 - <?php echo $cfg_site_name;?></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Expires" content="0" />
<link href="<?php echo TPL;?>css/logo.css" rel="stylesheet" type="text/css" />
<link href="/favicon.ico" type="image/ico" rel="shortcut icon" />
</head>
<body>

<div class="top">
        <div class="logo">
            <a href="<?php echo $cfg_site_url;?>">
                <img alt="logo" src="<?php echo TPL;?>images/xb/logo.gif" /></a></div>
        <div class="T_right">
            <a href="<?php echo $cfg_site_url;?>">返回首页</a><span>|</span><a href="/help.php">帮助中心</a>
        </div>
    </div>
    <div class="login">
        <div class="register">
            <a href="<?php echo url("user.php?action=register"); ?>" title="立即注册" target="_blank"></a>
        </div>


 <form name="login" method="post" action="<?php echo url("user.php?action=login"); ?>">
<input type="hidden" size="20" value="login" id="act" name="act">
        <div class="dl">
            <h2>
                <img alt="登录" src="<?php echo TPL;?>images/xb/dl.gif" /></h2>
            <div class="go">
                <table id="txtTable">
                    <tr>
                        <td class="l">
                          用户名
                        </td>
                        <td>
                            <input name="userName" id="userName" value="" type="text" onfocus="this.className='buy_ipt2'" onblur="this.className='buy_ipt1';" onmouseout="this.className='buy_ipt1';" onmouseover="this.className='buy_ipt2';" />
                        </td>
                    </tr>
                    <tr>
                        <td class="l">
                           密码
                        </td>
                        <td>
                            <input name="password" id="u_userPw" type="password" onfocus="this.className='buy_ipt2'" onblur="this.className='buy_ipt1';" onmouseout="this.className='buy_ipt1';" onmouseover="this.className='buy_ipt2';" maxlength="30" />
                        </td>
                    </tr>
                    <tr>
                        <td class="l">
                          验证码
                        </td>
                        <td>
                       <input type="text" size="8" onfocus="this.className='buy_ipt2'" onblur="this.className='buy_ipt1';" onmouseout="this.className='buy_ipt1';" onmouseover="this.className='buy_ipt2';" id="gd_code" class="buy_ipt1" name="code" style=" width:80px">
      <img align="absmiddle" onclick="var now=new Date();this.src='includes/code/securimage_show.php?sid=<? echo md5(time()); ?>&amp;w=92&amp;h=30&amp;t='+Math.random();" style="cursor: pointer;" src="includes/code/securimage_show.php?sid=<? echo md5(time()); ?>&amp;w=92&amp;h=30&amp;t='+Math.random();">
                        </td>						
                    </tr>
                    
                </table>
                <dl>
          <dt><label><input id="remUsername" name="RememberMe" type="checkbox" value="checked" />下次记住我</label></dt>
           <dd><a href="<?php echo url("user.php?action=resetp"); ?>">忘记密码了？</a></dd>
                </dl>
                <div class="join">
<input type="submit" name="commit" value="登 录" style="height:0px;"/>
                </div>
            </div>
 </form>
 
            <div class="tishi">
                <h3>
                    还没加入<?php echo $cfg_site_name;?>？</h3>
                <p>
      <a href="<?php echo url("user.php?action=register"); ?>" target="_blank">立即加入<?php echo $cfg_site_name;?></a>与全球1,000,000华人共享网购的快乐！</p>
            </div>
        </div>
    </div>
    <div class="foot">
        <p><? $Table=new Tableclass('about','aid');

$aboutlist=$Table->getdata('','','listorder asc,aid asc','title,aid');

 ?>        <?php if(is_array($aboutlist)) foreach($aboutlist AS $r) { ?>
          <a href="<?php echo url("about.php?aid=$r[aid]"); ?>"><?php echo $r['title'];?></a>&nbsp;|&nbsp;
  <?php } ?>	
        </p>
   <?php echo $cfg_site_bottomtxt;?> 
    </div>


</body>
</html>
