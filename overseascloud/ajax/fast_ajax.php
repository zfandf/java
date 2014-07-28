<?php
//弹出一键填单相关ajax数据处理
include("../common.inc.php");
InitGP(array("action","url","refuname","referer","aid","cityid")); //初始化变量全局返回
include(INC_PATH."/shopsite.class.php");
$shopsite=ShopClass::init();
AjaxHead();
if($action=='get' and !empty($url)){

	$url=str_replace("tmall","taobao",$url);
	$info=$shopsite->get($url);
	if(empty($info))$data['_statusCode']=500;
	$info['sellerurl']=str_replace('" target="_blank','',$info['sellerurl']);
	if(empty($info['goodsprice']))
	{
		$info['goodsprice'] = -1;
	}
	if(empty($info['goodsname']))
	{
		$info['goodsname'] = -1;
	}
	$data['d']=array('Href'=>$info['url'],'Name'=>$info['goodsname'],'BuyNum'=>$info['goodsnum'],'Freight'=>$info['sendprice'],'IsAuction'=>0,'IsFreightFree'=>'false','Picture'=>$info['goodsimg'],'Price'=>$info['goodsprice'],'Remark'=>'','Shop'=>array('Href'=>$info['sellerurl'],'Name'=>$info['goodsseller'],'Credit'=>0,'DeliverySpeed'=>0,'PositiveRatio'=>0,'ServiceAttitude'=>0,'Trueness'=>0),'Thumbnail'=>$info['goodsimg'],'VIPPrice1'=>-1,'VIPPrice2'=>-1,'VIPPrice3'=>-1,'Error'=>'','UserGroup'=>0);

	echo json_encode($data);
	exit;

}else if($action=='add'){
	//抓取商品加入购物车ajax
	$strjson=str_replace("'",'"',stripslashes($_POST['adddata']));
	$pdata=json_decode($strjson);

	$p_name = Char_cv($pdata->name);
	$p_price = GetNum($pdata->price);
	$p_fee = GetNum($pdata->freight);
	$p_num = GetNum($pdata->buyNum);
	$p_note = Char_cv($pdata->remark);
	$p_url = Char_cv($pdata->href);
	$p_size = Char_cv($pdata->chicun);
	$p_color = Char_cv($pdata->yanse);
	$p_saler = Char_cv($pdata->shopName);
	$s_url = Char_cv($pdata->shopHref);
	$picture = Char_cv($pdata->picture);
	$type = GetNum($pdata->type);
	if($type==0)$type=1;
	$expressno = Char_cv($pdata->expressno);
	if(strlen($p_name)<=0 || strlen($p_price)<=0 || $p_fee<0 || strlen($p_num)<=0||strlen($p_url)<=0){
		echo "商品名：".strlen($p_name)."商品价格:".strlen($p_price)."运费".$p_fee."数量".strlen($p_num)."url长度".strlen($p_url);
		return ;
		exit;
	}
	$preg=$shopsite->getpreg($p_url);//获取站点
	
	//如果买家为空
	if(empty($p_saler)){
		$parts = parse_url($p_url);
		$p_saler = $parts['host'];
		$s_url = $parts['scheme'].'://'.$parts['host'];
	}
	if($preg==false){
		$preg['shopname']= lang('other_website'); 
		$preg['shopurl']= '###';
	}
	//放入购物车处理
	$addarray=array(
		'goodsurl'=>$p_url,
		'goodsname'=>$p_name,
		'goodsprice'=>$p_price,
		'sendprice'=>$p_fee,
		'goodsnum'=>$p_num,
		'goodsimg'=>$picture,
		'goodssize'=>$p_size,
		'goodscolor'=>$p_color,
		'goodsseller'=>$p_saler,
		'sellerurl'=>$s_url,
		'goodssite'=>$preg['shopname'],
		'siteurl'=>$preg['shopurl'],
		'expressno'=>$expressno,
		'type'=>$type,
		'goodsremark'=>$p_note,
		'addtime'=>time()
	);
	include(INC_PATH."/cart.class.php");
	$Cart=CartClass::init();	
	$info=$Cart->add($addarray);
	if(GetNum($info)){
		echo json_encode('OK');
	}else echo $info;
	exit;
}else if($action=='state'){
	include(INC_PATH."/cart.class.php");
	$Cart=CartClass::init();
	$countnum=$Cart->getnum();
	$countmoney=$Cart->countmoney();
	//返回商品总数和总价
	echo "tj#".$countnum."#".$countmoney['totalmoney'];
}
?>