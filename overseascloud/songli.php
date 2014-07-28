<?php
//国内送礼
include("common.inc.php");
InitGP(array("action","gid","page")); //初始化变量全局返回
$f=new TableClass('songli','gid');



include template('songli');//包含输出指定模板
?>