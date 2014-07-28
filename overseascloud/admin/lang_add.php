<?php
include("../common.inc.php");
include("function_common.php");
InitGP(array("page","action","state","value","lid","ids","did","delids")); //初始化变量全局返回
$Table=new TableClass("lang","lid");
AjaxHead();//禁止页面缓存
if(empty($action)){
	InitGP(array("lid","name","code","apicode","listorder")); //初始化变量全局返回
	if(!empty($_POST) and !empty($name)){

		if(empty($code))showmsg("缩写不能为空!","-1");//出错！
		if(empty($name))showmsg("名称不能为空!","-1");//出错！
		if(empty($apicode))showmsg("自动翻译代码不能为空!","-1");//出错！
		$arrayadd=array(
			"code"=> Char_cv($code),
			"name"=> Char_cv($name),
			"apicode"=> Char_cv($apicode),
			"def"=> 0,
			"state"=> 1,
			"listorder"=> GetNum($listorder)
		);
		$info=$Table->add($arrayadd);
		
		if(GetNum($info)){
			cache_lang();
			exit("<script language='javascript'>alert('发布成功');parent.$.fn.colorbox.close();</script>");
		}else{
			exit("<script language='javascript'>alert('发布失败');history.go(-1);</script>");
		}
	}else{
		include("tpl/lang_add.htm");
	}
}elseif($action=="edit" && !empty($lid)){
	InitGP(array("lid","name","code","apicode","listorder")); //初始化变量全局返回
	if(!empty($_POST) and !empty($name) and !empty($lid)){
		$lid=GetNum($lid);
		if(empty($lid))showmsg(lang('format_error'),"-1");//出错！
		if(empty($name))showmsg("中文名不能为空!","-1");//出错！
		if(empty($code))showmsg("缩写不能为空!","-1");//出错！
		$arrayadd=array(
			"code"=> Char_cv($code),
			"name"=> Char_cv($name),
			"apicode"=> Char_cv($apicode),
			"listorder"=> GetNum($listorder)
		);
		$info=$Table->edit($lid,$arrayadd);
		if($info=="OK"){
			cache_lang();
			exit("<script language='javascript'>alert('".lang('Edited_successfully')."');parent.$.fn.colorbox.close();</script>");
		}else{
			exit("<script language='javascript'>alert('".lang('Edited_failed')."');history.go(-1);</script>");
		}
	}else{
		$evalue=$Table->getone($lid);
		include("tpl/lang_add.htm");
	}
}else{
	showmsg(lang('unknown_request'),"-1");//出错！
}
?>