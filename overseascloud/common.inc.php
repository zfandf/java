<?php
error_reporting(0);
error_reporting(E_ALL &~E_NOTICE);
ini_set('display_errors',1);
function_exists('date_default_timezone_set') &&date_default_timezone_set('Etc/GMT-8');
function get_microtime() {

list($usec,$sec) = explode(' ',microtime());

return ((float)$usec +(float)$sec);

}

$time_start = get_microtime();

function ptime() {

global $time_start;

$time_end = get_microtime();

$ptime = $time_end -$time_start;

return substr($ptime,0,8);

}

if(PHP_VERSION <'4.1.0') {

$_GET = &$HTTP_GET_VARS;

$_POST = &$HTTP_POST_VARS;

$_COOKIE = &$HTTP_COOKIE_VARS;

$_SERVER = &$HTTP_SERVER_VARS;

$_ENV = &$HTTP_ENV_VARS;

$_FILES = &$HTTP_POST_FILES;

}

if(!get_magic_quotes_gpc()){

Add_S($_POST);

Add_S($_GET);

Add_S($_COOKIE);

Add_S($_SESSION);

}

define('ZZQSS',true);

define('ROOT_PATH',str_replace("\\",'/',dirname(__FILE__)));

$php_self = isset($_SERVER['PHP_SELF']) ?$_SERVER['PHP_SELF'] : $_SERVER['SCRIPT_NAME'];

define('HTTP_REFERER',isset($_SERVER['HTTP_REFERER']) ?$_SERVER['HTTP_REFERER'] : '');

define('PHP_SELF',htmlentities($php_self));

define('ROOT_DIR',substr(PHP_SELF,0,strrpos(PHP_SELF,'/')));

define('SITE_URL',"http://".$_SERVER['HTTP_HOST'].ROOT_DIR);

define('INC_PATH',ROOT_PATH.'/includes');

$site_url=SITE_URL;

define('TPL_CACHEPATH',ROOT_PATH.'/data/cache_template');

define('CFG_CACHEPATH',ROOT_PATH.'/data/syscache');

define('DATA_CACHEPATH',ROOT_PATH.'/data/datacache/');

if(!file_exists(ROOT_PATH.'/data/install.lock')) {

header("Location: install/index.php");

exit();

}

@include_once('includes/tablec.php');

$timestamp = time();

$_USERS=array();

$ERROR_MSG="";

$L = 'cn';

$L_array = array('cn','en','ewen');

include_once( ROOT_PATH.'/config/setting.inc.php');

include_once( ROOT_PATH.'/config/config.inc.php');

require_once(CFG_CACHEPATH.'/config.cache.inc.php');

if(is_dir(ROOT_PATH."/templates/{$cfg_templet_name}"))

{

define('TPL_PATH',ROOT_PATH."/templates/{$cfg_templet_name}");

define('TPL','templates/'.$cfg_templet_name.'/');

}else{

define('TPL_PATH',ROOT_PATH."/templates/default");

define('TPL','templates/default/');

}

include_once( ROOT_PATH.'/includes/fun_common.php');

include_once(ROOT_PATH.'/includes/fun_template.php');

require_once ROOT_PATH.'/includes/db_mysql.class.php';

$db=&DB::object();
exit();

$db->connect($dbhost,$dbuser,$dbpw,$dbname,$pconnect);

include_once(INC_PATH."/table.class.php");

$cookiel=get_cookie('l');

if(!empty($_GET['l']) &&in_array($_GET['l'],$L_array)){

$L = $_GET['l'];

set_cookie('l',$_GET['l'],time()+3600);

cache_page_clear();

}elseif(!empty($cookiel)&&in_array($cookiel,$L_array)){

$L = $cookiel;

}

include_once( ROOT_PATH.'/language/'.$L.'/templates.lang.php');

include_once( ROOT_PATH.'/language/'.$L.'/admin.inc.php');

include_once( ROOT_PATH.'/language/'.$L.'/main.inc.php');

function Add_S(&$array){

if(is_array($array)){

foreach($array as $key=>$value){

if(!is_array($value)){

$array[$key]=addslashes($value);

}else{

Add_S($array[$key]);

}

}

}

}

$anonymous=get_cookie('anonymous');

if(empty($anonymous)){

$xxtea = new Xxtea();

$auth=real_ip()."\t".$timestamp;

$strcode=$xxtea->encrypt($auth,"zzqss");

set_cookie('anonymous',$strcode,$timestamp+3600*24*7);

$anonymous=$strcode;

}

checkauth();

checkkey();

if (!empty($_USERS['uname'])) {

$wherestrcart="uname ='".$_USERS['uname']."'";

}else {

$wherestrcart="anonymous ='".$anonymous."'";

}

$_CARTCOUNT=DB::result_first("Select count(gid) From ".DB::table('cart')." where ".$wherestrcart);

?>