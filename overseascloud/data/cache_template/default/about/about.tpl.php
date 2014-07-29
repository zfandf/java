<?php defined('ZZQSS') or exit('Access Denied'); ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="<?php echo $value['seokeywords'];?>" />
<meta name="description" content="<?php echo $value['seodescription'];?>" />
<link type="text/css" rel="Stylesheet" href="<?php echo TPL;?>css/NewTopFoot.css" />
<link href="<?php echo TPL;?>css/AddItemPanel.css" rel="stylesheet" type="text/css" />
<script src="<?php echo TPL;?>js/jquery-1.4.1.min.js" type="text/javascript"></script>
<script src="<?php echo TPL;?>js/jQuery.Extend.js" type="text/javascript"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/jQuery.Drag.min.js"></script>
<script src="<?php echo TPL;?>js/Plug-in/jquery.cookies.2.1.0.min.js" type="text/javascript"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/Gobal.js"></script>
<link href="<?php echo TPL;?>css/about.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
var id = '<?php echo $aid;?>';
$(function() {
$("#" + id).addClass("tl");
});
</script>

<title>
<?php echo $value['title'];?> - <?php echo $cfg_site_name;?>
</title></head>
<body>
    
<form name="" method="post" action="" id="">

<?php include template('header'); ?>

<div class="about">
        <div class="full">
            <div class="leftpan">
                <h2>
                  关于我们</h2>
                <ul>
                <?php if(is_array($aboutlist)) foreach($aboutlist AS $r) { ?>
                <li id='<?php echo $r['aid'];?>'><a href='<?php echo url("about.php?aid=$r[aid]"); ?>'><?php echo $r['title'];?></a></li>
<?php } ?>			

                        
                </ul>
          </div>
          <div class="rightpan">
                <h1><?php echo $value['title'];?></h1>
            <div class="detail">
                     <?php echo $value['body'];?>
            </div>
            </div>
        </div>
        <div style="background: url(<?php echo TPL;?>/images/yuan_top.gif) no-repeat -952px 0;
            height: 5px; clear: both">
        </div>
    </div>

    
<?php include template('footer'); ?>

</form>
</body>
</html>
