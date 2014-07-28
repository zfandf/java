<?php
header("Content-type: text/html; charset=utf-8");
include("common.inc.php");

InitGP(array("page","action","state","value","payid","ids","did","delids","name")); //初始化变量全局返回
$Table=new TableClass("users","uid");
if(empty($action)){
	InitGP(array("state","orderby","orderway","keywords")); //初始化变量全局返回
	if(!empty($countwherestr)) $countwheresql = implode(' AND ', $countwherestr);	//条件汇总
	if(!empty($wherestr)) $wheresql = implode(' AND ', $wherestr);	//条件汇总
	$orderway=$orderway=="desc"?"desc":"asc";
	if(!empty($orderby))$orderstr="{$orderby} {$orderway}";
	$totall=$Table->getcount($countwheresql); 							  //总信息数
}

$newsobj=new TableClass('news','nid');
$newsarray=$newsobj->getdata(5,'','',"nid,title,addtime"); //获取数据

$goodsobj=new TableClass('goods','gid');
$rightarray=$goodsobj->getdata(4,"flag='h'",'listorder asc,gid desc','gid,uname,gtypeid,goodsurl,goodsname,goodsprice,goodsseller,goodsimg,sellerurl,shopname,rindex,views,buynum,listorder,flag,addtime');

InitGP(array("action","common","tid","gid","page","gtypeid","typename","taoid","txtcommentss","share_like","tao_id","type","user")); //初始化变量全局返回
$goodsobj=new TableClass('goods','gid');
$typeobj=new TableClass('gtype','typeid');	
$commonobj=new TableClass('goodscomment','cid');
$likeobj=new TableClass('goodslike','lid');
if($action==''){
	//$wherestr[]="gtypeid in(".getdotstring($tids,'int').")";
	if (!empty($gtypeid)){
		$wherestr[]="gtypeid=$gtypeid";
	}
	if (!empty($gtypename)){
		$wherestr[]="typename=$typename";
	}	
	if ($type=='usershare'){
		$wherestr[]="uname='$user'";
	}
	$wherestr[]="Audit=1";
	if(!empty($wherestr)) $wheresql = implode(' AND ', $wherestr);	//条件汇总
	//获取当前页码
	$total=$goodsobj->getcount($wheresql); 						  //总信息数
	$pagesize=5;												  //一页显示信息数
	$page = isset($page) ? max(1, intval($page)) : 1;             //处理页码变量
	$offset=($page-1)*$pagesize;   								  //偏移量
	$dataarray=$goodsobj->getdata("$offset,$pagesize",$wheresql,'listorder asc,gid desc','gid,uid,uname,gtypeid,goodsurl,goodsname,goodsprice,goodsseller,goodsimg,sellerurl,shopname,rindex,views,buynum,listorder,flag,why,about,addtime'); //获取数据	
	$listarray=array();	
	//print_r($dataarray);
	for($i=0;$i<4;$i++){
		$listarray[]=array_slice($dataarray,$i*4,4);
	}
	
	if($share_like=='xihuanyixia'){ //喜欢一下
		$tao_id=GetNum($tao_id);			
		if(empty($_USERS['uid'])) {
			set_cookie('_refer', rawurlencode(remove_xss($_SERVER['REQUEST_URI'])));//设置登录成功跳转地址
			dheader(url("user.php?action=loginandreg"));//php跳转页面
		}else{		
			$addlikearray=array(
				'gid'=>$tao_id,
				'uid'=>$_USERS['uid'],
				'uname'=>$_USERS['uname'],
				'addtime'=>time(),
				'state'=>1
			);
			//print_r($addlikearray);
			$info=$likeobj->add($addlikearray);
			if(GetNum($info)){
				print("<script language='javascript'>alert('喜欢一下成功！');</script>");
				jumpurl(url('sharetao.php'));
				exit;
			}else{ 
				echo $info;
				exit;
			}
		}		
	}

	if($common=='share_common'){ //添加评论
		$gid=GetNum($taoid);			
		if(empty($_USERS['uid'])) {
			set_cookie('_refer', rawurlencode(remove_xss($_SERVER['REQUEST_URI'])));//设置登录成功跳转地址
			dheader(url("user.php?action=loginandreg"));//php跳转页面
		}			
		//添加评论
		$addarray=array(
			'gid'=>$gid,
			'uid'=>$_USERS['uid'],
			'uname'=>$_USERS['uname'],
			'content'=>$txtcommentss,
			'addtime'=>time(),
			'state'=>1
		);	
		$info=$commonobj->add($addarray);
		if(GetNum($info)){
			//echo json_encode('OK');
			print("<script language='javascript'>alert('评论成功！');</script>");
			jumpurl(url('sharetao.php'));
		}else 
			echo $info;
		exit;		
	}
	include template('sharetao');//包含输出指定模板
}elseif($action=='view'){
	$gid=GetNum($gid);
	$value=$goodsobj->getone($gid);
	$gtype=$typeobj->getone($value['gtypeid']);	
	addfield($goodsobj->table,'views',"gid=".$gid,1);//增加浏览次数		
	//获取该用户的更多分享-3
	$share_uid = $value['uid'];
	$sharearray3=$goodsobj->getdata(15,"Audit=1 and uid='".$share_uid."'",'listorder desc,gid desc','gid,uid,uname,gtypeid,goodsurl,goodsname,goodsprice,goodsseller,goodsimg,addtime');	
	//分享_评论
	$wherestr[]="gid=$gid";
	$wherestr[]="state=1";
	if(!empty($wherestr)) $wheresql = implode(' AND ', $wherestr);	//条件汇总
	$total=$commonobj->getcount($wheresql); 						  //总信息数
	$pagesize=2;												  //一页显示信息数
	$page = isset($page) ? max(1, intval($page)) : 1;             //处理页码变量
	$offset=($page-1)*$pagesize;   								  //偏移量
	$commonarray=$commonobj->getdata("$offset,$pagesize",$wheresql,'cid desc','cid,gid,uid,uname,content,addtime'); //获取数据	
	if($share_like=='xihuan'){ //喜欢一下
		$tao_id=GetNum($tao_id);			
		if(empty($_USERS['uid'])) {
			set_cookie('_refer', rawurlencode(remove_xss($_SERVER['REQUEST_URI'])));//设置登录成功跳转地址
			dheader(url("user.php?action=loginandreg"));//php跳转页面
		}else{		
			$addlikearray=array(
				'gid'=>$tao_id,
				'uid'=>$_USERS['uid'],
				'uname'=>$_USERS['uname'],
				'addtime'=>time(),
				'state'=>1
			);
			//print_r($addlikearray);
			$info=$likeobj->add($addlikearray);
			if(GetNum($info)){
				print("<script language='javascript'>alert('喜欢一下成功！');</script>");
				jumpurl(url("sharetao.php?action=view&gid={$tao_id}"));
				exit;
			}else{ 
				echo $info;
				exit;
			}
		}		
	}
	
	if($common=='share_common'){
		$gid=GetNum($taoid);			
		if(empty($_USERS['uid'])) {
			set_cookie('_refer', rawurlencode(remove_xss($_SERVER['REQUEST_URI'])));//设置登录成功跳转地址
			dheader(url("user.php?action=loginandreg"));//php跳转页面
		}			
		//添加评论
		$addarray=array(
			'gid'=>$gid,
			'uid'=>$_USERS['uid'],
			'uname'=>$_USERS['uname'],
			'content'=>$txtcommentss,
			'addtime'=>time(),
			'state'=>1
		);	
		$info=$commonobj->add($addarray);
		if(GetNum($info)){
			//echo json_encode('OK');
			print("<script language='javascript'>alert('评论成功！');</script>");
			jumpurl(url("sharetao.php?action=view&gid={$gid}"));
		}else 
			echo $info;
		exit;		
	}
	
	include template('sharetao_view');//包含输出指定模板

}


?>