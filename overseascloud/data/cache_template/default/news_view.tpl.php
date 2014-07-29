<?php defined('ZZQSS') or exit('Access Denied'); ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="代购" />
<link type="text/css" rel="Stylesheet" href="<?php echo TPL;?>css/NewTopFoot.css" />
<link href="<?php echo TPL;?>css/AddItemPanel.css" rel="stylesheet" type="text/css" />
<script src="<?php echo TPL;?>js/jquery-1.4.1.min.js" type="text/javascript"></script>
<link href="<?php echo TPL;?>css/placard.css" rel="stylesheet" type="text/css" />
<title><?php echo $value['title'];?> - <?php echo $cfg_site_name;?></title>
</head>
<body>
    
<div>

</div>

    
<?php include template('header'); ?>
    
    <div class="placard">

        <div class="yj_top">
            <div class="ren">
                <h1><?php echo $value['title'];?></h1>
            </div>
        </div>
        <div class="nr">
<?php echo $value['body'];?>        
        </div>
        <div class="yj_bottom">
            <div class="time">
                <p>
                   <?php echo date('Y-m-d',$value['addtime']);?></p>
                <p>发表</p>
            </div>

        </div>
    </div>

    
<?php include template('footer'); ?>


</body>
</html>
