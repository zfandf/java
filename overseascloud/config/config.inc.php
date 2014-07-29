<?php
// [CH] 以下变量请根据空间商提供的账号参数修改,如有疑问,请联系服务器提供商

	$dbhost = 'localhost';			// 数据库服务器
	$dbuser = 'root';			// 数据库用户名
	$dbpw = 'qq72298482';				// 数据库密码
	$dbname = 'daiz';			// 数据库名
	$pconnect = 1;				// 数据库持久连接 0=关闭, 1=打开


// [CH] Mysql 辅助服务器设置，只有当您拥有多个 Mysql 服务器且协同工作时请进行设置

	$multiserver = array();			// 服务器变量初始化，请勿修改或删除
	
// [CH] 如您对 cookie 作用范围有特殊要求, 或论坛登录不正常, 请修改下面变量, 否则请保持默认

	$cookiepre = 'yqt_';			// cookie 前缀
	$cookiedomain = ''; 			// cookie 作用域
	$cookiepath = '/';			// cookie 作用路径
	
// [CH] 论坛投入使用后不能修改的变量

	$tablepre = 'yqt_';   			// 表名前缀, 同一数据库安装多个论坛请修改此处
// [CH] 小心修改以下变量, 否则可能导致论坛无法正常使用

	$database = 'mysql';			// 论坛数据库类型，请勿修改
	$dbcharset = 'utf8';			// MySQL 字符集, 可选 'gbk', 'big5', 'utf8', 'latin1', 留空为按照论坛字符集设定
	
//网站字符集
	$charset = 'utf-8';			// 网站字符集 'GBK' ,'UTF-8' 
	define('CHARSET', 'UTF-8'); //网站字符集 'GBK' ,'UTF-8' 

//cookie加密用密匙	
	define('KEY',"zzqss");

define('SOFT_NAME', '代购系统');
define('SOFT_VERSION', '3.0.8');
define('SOFT_RELEASE', '20120301');



