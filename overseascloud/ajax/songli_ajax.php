<?php
//弹出一键填单相关ajax数据处理
include("../common.inc.php");
InitGP(array("action","url","refuname","referer","aid","cityid")); //初始化变量全局返回
include(INC_PATH."/shopsite.class.php");
$shopsite=ShopClass::init();
include_once(INC_PATH."/member.class.php");
$m=new memberclass();
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

 	if (empty($_USERS['uname'])) {
		echo json_encode('LOGIN');
		//set_cookie('_refer', rawurlencode(remove_xss($_SERVER['REQUEST_URI'])));
		exit;
	} 
	
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
	$p_goodslianxiren = Char_cv($pdata->goodslianxiren);	
	$p_goodstel = Char_cv($pdata->goodstel);
	$p_postcode = Char_cv($pdata->postcode);
	$p_goodsaddress = Char_cv($pdata->goodsaddress);	
	$p_saler = Char_cv($pdata->shopName);
	$s_url = Char_cv($pdata->shopHref);
	$picture = Char_cv($pdata->picture);

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
		'uid'=>$_USERS['uid'],
		'uname'=>$_USERS['uname'],	
		'goodsurl'=>$p_url,
		'goodsname'=>$p_name,
		'goodsprice'=>$p_price,
		'sendprice'=>$p_fee,
		'goodsnum'=>$p_num,
		'goodsimg'=>$picture,
		'goodssize'=>$p_size,
		'goodscolor'=>$p_color,
		'goodslianxiren'=>$p_goodslianxiren,		
		'goodstel'=>$p_goodstel,		
		'postcode'=>$p_postcode,		
		'goodsaddress'=>$p_goodsaddress,		
		'goodsseller'=>$p_saler,
		'sellerurl'=>$s_url,
		'goodssite'=>$preg['shopname'],
		'siteurl'=>$preg['shopurl'],
		'goodsremark'=>$p_note,
		'addtime'=>time(),
		'uptime'=>'',
		'state'=>1
	);
	include(INC_PATH."/songli.class.php");
	$Cart=CartClass::init();	
	$info=$Cart->add($addarray);
	if(GetNum($info)){	
		$tempmoney=$p_price*$p_num;
		$note=lang('Buy')."<a href=\'".$p_url."\' target=\'_blank\'>《".$p_name."》</a> ".$p_num.lang('Pieces_order_ID').$info;
		$m->moneyedit($_USERS['uname'],- $tempmoney,1,$note);  //购物扣去账户余额	
		
		$note_yunfei=lang('goodsseller')."[".$p_saler."]".lang('Domestic_Ship').$p_fee;
		$m->moneyedit($_USERS['uname'],- $p_fee,2,$note_yunfei);  //运费扣去账户余额		
		echo json_encode('OK');

	}else echo $info;
	exit;
}else if($action=='state'){
	include(INC_PATH."/songli.class.php");
	$Cart=CartClass::init();
}
?>