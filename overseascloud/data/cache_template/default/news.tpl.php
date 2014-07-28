<?php defined('ZZQSS') or exit('Access Denied'); ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="Stylesheet" href="<?php echo TPL;?>css/NewTopFoot.css" />
<link href="<?php echo TPL;?>css/AddItemPanel.css" rel="stylesheet" type="text/css" />
<script src="<?php echo TPL;?>js/jquery-1.4.1.min.js" type="text/javascript"></script>
<link href="<?php echo TPL;?>css/placard.css" rel="stylesheet" type="text/css" />	
<title>网站公告 - <?php echo $cfg_site_name;?></title>
</head>
<body>

<?php include template('header'); ?>
    
    <div class="placard">

        <div class="yj_top">
            <div class="g_g">
                <h2>
                   网站公告</h2>
            </div>
        </div>
        <div class="lb">
            <ul>
<?php if(is_array($dataarray)) foreach($dataarray AS $r) { ?>
                
                <li><a href="<?php echo url("news.php?action=view&nid=$r[nid]"); ?>"><?php echo $r['title'];?></a><span><?php echo date('Y-m-d',$r['addtime']);?></span></li>
<?php } ?>		


            </ul>
        </div>
        <div class="p">
            <div class=""><? echo pagelist($total,$pagesize,$page,"");; ?> 
</div>
        </div>
        <div class="yj_bottom">
        </div>
    </div>

    
 <?php include template('footer'); ?>

</body>
</html>