<?php
//我的劵
InitGP(array("action","goodsId","gtypeid","page","gid")); //初始化变量全局返回
$f=new TableClass('goods','gid');
//变量配置文件包含
include_once( ROOT_PATH.'/config/setting.inc.php');

if(empty($action)){
	$wherestr[]="uname='".$_USERS['uname']."'";
	if(!empty($wherestr)) $wheresql = implode(' AND ', $wherestr);	 //条件汇总   	
		$dataarrayproduct=$f->getdata("","$wheresql and gtypeid=1"); //获取服装数据 
    	$dataarraycomment=$f->getdata("","$wheresql and gtypeid=2"); //获取鞋包数据
    	$dataarraymeirong=$f->getdata("","$wheresql and gtypeid=3"); //获取美容数据
    	$dataarrayjujia=$f->getdata("","$wheresql and gtypeid=4");   //获取居家数据    	
    	$dataarraypeishi=$f->getdata("","$wheresql and gtypeid=5");  //获取配饰数据
    	$dataarrayshipin=$f->getdata("","$wheresql and gtypeid=6");  //获取食品数据
  	
}elseif($action=='add'){
	AjaxHead();
	$jsondata = json_decode(str_replace("'", '"',file_get_contents('php://input')));
	include(INC_PATH."/shopsite.class.php");
	$shopsite=ShopClass::init();	
	$preg=$shopsite->getpreg($jsondata->href);//获取站点
	$addarray=array(
		'gtypeid'=>$jsondata->option,
		'uid'=>$_USERS['uid'],
		'uname'=>$_USERS['uname'],
		'goodsurl'=>$jsondata->href,
		//'guoji'=>$jsondata->guoji,
		'goodsname'=>$jsondata->name,
		'goodsprice'=>$jsondata->price,
		'goodsimg'=>$jsondata->picture,
		'goodsseller'=>$jsondata->shopName,
		'sellerurl'=>$jsondata->shopHref,
		'shopname'=>$jsondata->siteName,
		'rindex'=>$jsondata->rank,
		'why'=>$jsondata->why,
		'usertype'=>1,
		'flag'=>'h',
		'audit'=>0,
		'addtime'=>time()
	);
	
	//处理插入数据库
	$info=$f->add($addarray);
	if(GetNum($info)){
		echo json_encode('OK');
		exit;
	}else{
		echo json_encode("处理添加推荐出错");
		exit;
	}
}elseif($action=='del'){
	$jsondata = json_decode(str_replace("'", '"',file_get_contents('php://input')));//获取json数据
	//echo json_encode($jsondata->gid);
	if($f->del($jsondata->gid,$_USERS['uname'])){
		exit(json_encode('OK'));
	}else{
		exit(json_encode('出错'));
	}
}

include template('member_recommend');//包含输出指定模板
?>