<?php
include("../common.inc.php");
include("function_common.php");
InitGP(array("page","action","state","value","rid","ids","did","delids")); //初始化变量全局返回
$Table=new TableClass("refund","rid");
AjaxHead();//禁止页面缓存

if(empty($action)){
	InitGP(array("type","state","orderby","orderway","keywords")); //初始化变量全局返回
	if(!empty($state))$wherestr[]="state='{$state}'";
	if(!empty($type))$wherestr[]="type='{$type}'";
	if(!empty($keywords))$wherestr[]=" CONCAT(rid,' ',uname,' ',money,' ',accountmoney,' ',remark) like '%$keywords%' ";
	if(!empty($wherestr)) $wheresql = implode(' AND ', $wherestr);	//条件汇总
	
	$orderway=$orderway=="desc"?"desc":"asc";
	if(!empty($orderby))$orderstr="{$orderby} {$orderway}";

	//获取当前页码
	$total=$Table->getcount($wheresql); 							  //总信息数
	$pagesize=15;												  //一页显示信息数
	$page = isset($page) ? max(1, intval($page)) : 1;             //处理页码变量
	$offset=($page-1)*$pagesize;   								  //偏移量
	$dataarray=$Table->getdata("$offset,$pagesize",$wheresql,$orderstr); //获取团购数据
	//print_r($dataarray);
	
	//包含后台模板文件
	include("tpl/refundrecord_list.htm");
	
}elseif ($action=="updateremark" && !empty($ids) && !empty($value)){
	//更改状态
	$ids=GetNum($ids);
	$wheresqlarr="rid ='{$ids}'";
	editstate($Table->table,"refundremark",$wheresqlarr,$value);//更改状态操作
	exit("1");
}elseif ($action=="changestate" && !empty($rid)){
	//更改状态
	$aid=GetNum($aid);
	$wheresqlarr="rid ={$rid}";
	editstate($Table->table,"state",$wheresqlarr,2);//更改状态操作
	showmsg("修改状态成功!","-1");//成功提示！
	
}elseif ($action=="del" && !empty($did)){
	//执行删除操作
	$did=GetNum($did);
	$info=$Table->del($did);
	if($info=="OK")showmsg("删除成功！",PHP_SELF);
	else showmsg($info,PHP_SELF);
}elseif ($action=="dels"){
	if(empty($delids)){showmsg("没有选择任何对象！",PHP_SELF);exit;}//空选择
	//执行删除多个操作
	$delids=explode('|',$delids);
	foreach ($delids as $id){
		if(GetNum($id)){
			$info=$Table->del($id);
		}
	}
	if($info=="OK")exit("1");
	
}else{
	showmsg("未知请求","-1");//出错！
}


?>