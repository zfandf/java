<?php
//帮助中心
include("common.inc.php");
InitGP(array("action","aid",'page')); //初始化变量全局返回

$aid=(int)$aid;
$page=(int)$page;

$Table=new Tableclass('about','aid');
$aboutlist=$Table->getdata('','','listorder asc,aid asc','title,aid');

//print_r($aboutlist);

$value=$Table->getone($aid);

include template('about/about');//包含输出指定模板
?>