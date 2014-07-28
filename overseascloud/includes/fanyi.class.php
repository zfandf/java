<?php
if (!defined('ZZQSS')){
	die("Access Denied");
}
class FanYiClass {
	var $db;
	var $tablepre;
	var $tl = 'en'; //自动翻译目标语言 en 英文 ru 俄文 it 意大利
 	function __construct(){
		//设置全局变量
		global $db,$tablepre;
		$this->db=$db;
		$this->tablepre=$tablepre;
	}
	function FanYiClass(){
		$this->__construct();
	}
	//对象获取
	function &init() {
		static $object;
		if(empty($object)) {
			$object = new FanYiClass();
		}
		return $object;
	}
	//翻译调用总函数
	function fanyi($str){
		return $this->google_api($str);
	}
	
	//google翻译接口
	function google_api($fanyi){
		$filename =md5($fanyi);
		$str = $this->cache_get($filename);
		if($str){
			return $str;
		}else{
			$fanyi = strip_tags($fanyi);//函数剥去 HTML、XML 以及 PHP 的标签。
			$array = str_replace(",","，",$array);
			$str = "http://translate.google.cn/translate_a/t?client=t&text=".urlencode($fanyi)."&hl=zh-CN&ie=UTF-8&sl=zh-CN&tl={$this->tl}&multires=1&otf=1&ssel=0&tsel=0&sc=1";
			$array =  file_get_contents($str);
			//echo $array;
			$array = str_replace("[","",$array);
			$array = str_replace("]","",$array);
			$array = str_replace("\"","",$array);
			$returnstr = substr($array,0,strpos($array, ','));
			$returnstr = iconv("GBK","UTF-8",$returnstr);
			$this->cache_put($filename, $returnstr);
			return $returnstr;
		}
	}
	function cache_put($filename,$str,$path = ''){
		$cachefile = ($path ? $path : DATA_CACHEPATH).$filename;	
		$strlen = file_put_contents($cachefile, $str);
		@chmod($cachefile, 0777);
		return $strlen;
	}
	function cache_get($filename, $path = ''){
		if(!$path) $path = DATA_CACHEPATH;
		$cachefile = $path.$filename;
		if(file_exists($cachefile)){
			return @file_get_contents($cachefile);
		}else{
			return false;
		}
	}
}
?>