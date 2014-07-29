<?php
include("../common.inc.php");
include("function_common.php");
InitGP(array("page","action","state","value","payid","ids","did","delids")); //初始化变量全局返回
$Table=new TableClass("songli","gid");
AjaxHead();//禁止页面缓存
header("Content-type: text/html; charset=".CHARSET);
if(empty($action)){
	InitGP(array("gid","uid","uname","goodsurl","goodsname","goodsprice","oldgoodsprice","sendprice","oldsendprice","goodsnum","oldgoodsnum","goodssize","goodscolor","goodsseller","sellerurl","goodsremark","orderweight","state","goodslianxiren","goodstel","goodsaddress","postcode")); //初始化变量全局返回
	if(!empty($_POST) and GetNum($gid)){
		$gid=GetNum($gid);
		//处理数量，价格和运费修改扣除用户相应金额账户余额
		if($goodsnum!=$oldgoodsnum){
			//商品价格调整
			$tempmoney=0;
			$tempmoney= - GetNum($oldgoodsprice) * GetNum($goodsnum - $oldgoodsnum);
			include_once(INC_PATH."/member.class.php");
			$m=new memberclass();
			$note="调整商品<a href=\'".$goodsurl."\' target=\'_blank\'>《".$goodsname."》</a>价格：".+ $tempmoney."订单ID:".$gid;
			$m->moneyedit($uname,$tempmoney,5,$note);//扣去账户余额
		}
		if($goodsprice!=$oldgoodsprice){
			//商品价格调整
			$tempmoney=0;
			$tempmoney=GetNum($oldgoodsprice-$goodsprice) * GetNum($goodsnum);
			include_once(INC_PATH."/member.class.php");
			$m=new memberclass();
			$note="调整商品<a href=\'".$goodsurl."\' target=\'_blank\'>《".$goodsname."》</a>价格：".-$tempmoney."订单ID:".$gid;
			$m->moneyedit($uname,$tempmoney,5,$note);//扣去账户余额
		}
		if($sendprice!=$oldsendprice){
			//商品运费调整
			$tempmoney=0;
			$tempmoney=GetNum($oldsendprice-$sendprice);//计算运费调整
			$wheresqlarr="uname = '".$uname."' and goodsseller = '".$goodsseller."' and state < 3";
			editstate($Table->table,"sendprice",$wheresqlarr,$sendprice);//更改状态操作
			
			include_once(INC_PATH."/member.class.php");
			$m=new memberclass();			
			$note="调整商品<a href=\'".$goodsurl."\' target=\'_blank\'>《".$goodsname."》</a>运费：".-$tempmoney."订单ID:".$gid;
			$m->moneyedit($uname,$tempmoney,5,$note);//扣去账户余额
		}
		
		$arrayedit=array(
			"goodsurl"=> $goodsurl,
			"goodsname"=> Char_cv($goodsname),
			"goodsprice"=> GetNum($goodsprice),
			"sendprice"=> GetNum($sendprice),
			"goodsnum"=> GetNum($goodsnum),
			"goodssize"=> Char_cv($goodssize),
			"goodscolor"=> Char_cv($goodscolor),
			"goodsseller"=> Char_cv($goodsseller),
			"goodsremark"=> Char_cv($goodsremark),
			"goodslianxiren"=> Char_cv($goodslianxiren),			
			"goodstel"=> Char_cv($goodstel),			
			"goodsaddress"=> Char_cv($goodsaddress),			
			"postcode"=> Char_cv($postcode),
			"sellerurl"=> $sellerurl,
			"state"=>GetNum($state),
			"uptime"=>time()
		);
		$info=$Table->edit($gid,$arrayedit);
		if($info=="OK"){
			exit("<script language='javascript'>alert('编辑成功');parent.parent.$.fn.colorbox.close();</script>");
		}else{
			exit("<script language='javascript'>alert('编辑失败');parent.location.reload();</script>");
		}	
	}else{
		$evalue=$Table->getone($gid);
		//print_r($evalue);
		include("tpl/songli_edit.htm");
	}
}
?>