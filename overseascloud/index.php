<?php

header("Content-type: text/html; charset=utf-8");
include("common.inc.php");









InitGP(array("action","type","oid","sid","page","minPrice","maxPrice","pages","goodprices","addtime","k","c")); 

include_once(INC_PATH."/order.class.php");

$o=OrderClass::init();

$Table=new OrderClass();

$typeobj=new TableClass('otype','typeid');

if(empty($action)){

	

	

	



$c = GetNum($c);

if ($c) {

	$wherestr[]="typeid='".$c."'";

}



$wherestr[]="state=1";

$wherestr[]="type=1";

if(!empty($minPrice) && !empty($maxPrice)){

	$wherestr[]="goodsprice between {$minPrice} and {$maxPrice}";

}

if(!empty($pages)){

	$pagesize=$pages;

}else{

	$pagesize=4;

}

if(!empty($goodprices)){

    if($goodprices==asc){

    	$orderby="goodsprice asc";

    }elseif($goodprices==desc){

    	$orderby="goodsprice desc";

    }

}

if(!empty($addtime)){

    if($addtime==asc){

    	$orderby="addtime asc";

    }elseif($addtime==desc){

    	$orderby="addtime desc";

    }

}



if(!empty($wherestr)) $wheresql = implode(' AND ', $wherestr);

$total=$o->getcount($wheresql); 

if ($total>1000) $total=1000;								  //显示最大一千条											  //一页显示信息数

$page = isset($page) ? max(1, intval($page)) : 1;             //处理页码变量

$offset=($page-1)*$pagesize;

$datapinarray=$o->getdata("$offset,$pagesize",$wheresql,$orderby);



//统计参与人数和参与人，时间

$wheres[]="type=2";

if(!empty($wheres)) $wheressql = implode(' AND ', $wheres);

$totalnum=$o->getcount($wheressql);

$data=$o->getdata("5",$wheressql,"addtime desc","uname,addtime"); 



$rightarray=$o->getdata(10,"type=1","pinnum desc");	

}



function FilterSearch($keyword)

{

	$keyword = ereg_replace("[\"\r\n\t\$\\><']",'',$keyword);

	if($keyword != stripslashes($keyword))

	{

		return '';

	}

	else

	{

		return $keyword;

	}

	return $restr;

}









$datadajiaobj=new TableClass('goods','gid');

$typeobj=new TableClass('gtype','typeid');

$datadajiaarray=$datadajiaobj->getdata("1,4","flag='c'",'listorder asc,gid desc','gid,gtypeid,goodsurl,goodsname,goodsprice,goodsseller,goodsimg,sellerurl,shopname,rindex,views,buynum,listorder,flag,addtime');



$datadajiaaobj=new TableClass('goods','gid');

$typeobj=new TableClass('gtype','typeid');

$datadajiaaarray=$datadajiaaobj->getdata("5,4","flag='h'",'listorder asc,gid desc','gid,gtypeid,goodsurl,goodsname,goodsprice,goodsseller,goodsimg,sellerurl,shopname,rindex,views,buynum,listorder,flag,addtime');





$datadajiaaaobj=new TableClass('goods','gid');

$typeobj=new TableClass('gtype','typeid');

$datadajiaaaarray=$datadajiaaaobj->getdata("8,4","flag='c'",'listorder asc,gid desc','gid,gtypeid,goodsurl,goodsname,goodsprice,goodsseller,goodsimg,sellerurl,shopname,rindex,views,buynum,listorder,flag,addtime');





InitGP(array("action","refuid","refuname","referer","aid","cityid")); //初始化变量全局返回



if($cfg_site_closed=="Y")showmsg(lang('Site_has_been_temporarily_closed'),"-1");



//用户评价

$Table=new TableClass('sendorder','sid');

$dataarray=$Table->getdata("3"," showcomment = 1 and state=3 and commenttime <> '' and reply <> ''","sid desc","uname,commenttime,comment");



//亲们喜欢

$goodsobj=new TableClass('goods','gid');

$cptjarray=$goodsobj->getdata("4","flag='h'",'buynum asc,gid desc','gid,gtypeid,goodsurl,goodsname,goodsprice,goodsseller,goodsimg,sellerurl,shopname,rindex,views,buynum,listorder,flag,addtime');







//获取精品活动

$specialobj=new TableClass('special','sid');

$specialarray1=$specialobj->getdata(2,"flag='sy'",'listorder asc,sid desc','sid,title,flag,about,pic,listorder,addtime');

$specialarray2=$specialobj->getdata("1,6","flag='sy'",'listorder asc,sid desc','sid,title,flag,about,pic,listorder,addtime');



//滚动活动

$topcarray=$specialobj->getdata(15,"flag='hd'",'listorder asc,sid desc','sid,title,flag,about,pic,listorder,addtime');



//获取优惠活动

$specialob=new TableClass('special','sid');

$special=$specialob->getdata(15,"flag='h'",'listorder asc,sid desc','sid,title,flag,about,pic,listorder,addtime');



//获取折扣信息

$discountobj=new TableClass('discount','did');

$discountarray=$discountobj->getdata(2,"flag='h'",'listorder asc,did desc','did,title,flag,about,pic,listorder,addtime,body,discounttime');



$discountob=new TableClass('discount','did');

$discount=$discountob->getdata(1,"flag='h'",'listorder asc,did desc','did,title,flag,about,pic,listorder,addtime');



//公告

$newsobj=new TableClass('news','nid');

$newsarray=$newsobj->getdata(4,'','',"nid,title,addtime"); //获取数据



//帮助信息

$wheresql="";

$articleobj=new TableClass('article','aid');

$articlearray=$articleobj->getdata(4,$wheresql,"aid asc",'aid,typeid,title');



include_once(INC_PATH.'/rate.class.php');

$rate = RateClass::init();

//获取最新汇率信息

$ratedata = $rate->get();



include template('index');//包含输出指定模板

?>