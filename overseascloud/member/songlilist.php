<?php
//我的劵
InitGP(array("action","type","gid","sid","page")); //初始化变量全局返回
include_once(INC_PATH."/songli.class.php");
$o=CartClass::init();


AjaxHead();
if(empty($action)){
	$uname=$_USERS['uname'];
	$wherestr[]="uname='{$uname}'";
	if(!empty($wherestr)) $wheresql = implode(' AND ', $wherestr);	//条件汇总
	$dataarray=$o->getdata("",$wheresql,""); //获取数据
	//订单分类
	$dataarray123=$dataarray4=$dataarray5=array();
	if(is_array($dataarray)){
		foreach($dataarray as $val){
			//if($val['state'] > 0 && $val['state'] < 4){
	   	  if($val['state'] > 0 && $val['state'] <= 5){
			//未处理订单
				$dataarray12[]=$val;
			}			
			if($val['state']==3){
			//在途订单
				$dataarray3[]=$val;
			}			
			if($val['state']==4){
			//已到到货的礼单
				$dataarray4[]=$val;
			}
		}
	}
	include template('member_songlilist');//包含输出指定模板
	
}elseif($action=='sendorder' && !empty($sid)){
	
	$uname=$_USERS['uname'];
	$wherestr[]="uname='{$uname}'";
	$wherestr[]="sid = ".GetNum($sid);
	if(!empty($wherestr)) $wheresql = implode(' AND ', $wherestr);	//条件汇总
	$dataarray=$o->getdata("",$wheresql,""); //获取团购数据	
	
	include template('member_orderlist5');//包含输出指定模板
	
}elseif($action=='del'){
	$jsondata = json_decode(str_replace("'", '"',file_get_contents('php://input')));

	if ($o->del($jsondata->gid)=="OK") {
		exit(json_encode('OK'));
	}else{
		exit(json_encode(lang('delete_failed')));
	}
}elseif ($action=='upremark'){
	$jsondata = json_decode(str_replace("'", '"',file_get_contents('php://input')));
	if(!empty($jsondata->remark)&&!empty($jsondata->gid)){
		$tempremark=Char_cv($jsondata->remark);
		$tempgid=GetNum($jsondata->gid);
		$wheresqlarr="uname='".$_USERS['uname']."' and gid=".$tempgid;
		editstate($o->table_order->table,"goodsremark",$wheresqlarr,$tempremark);//更改状态操作
		exit(json_encode('OK'));
	}else {
		exit(json_encode(lang('update_failed')));
	}
}

?>