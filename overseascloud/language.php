<?php
define('ZZQSS',true);

$file1 = "language/templates.lang.php"; //语言文件1
$file2 = "language/templates_ewen.lang.php"; //语言文件2(英文)

$resultfile = 'ewen_templates.lang.php'; //生成结果文件

include($file1);
$langfirst = $lang;//保存数组
include($file2);

$resultarray = array_merge($langfirst,$lang);

$array = "<?php\n\$lang =  ".var_export($resultarray, true).";\n?>";

echo $array;//输出结果文件

$strlen = file_put_contents($resultfile, $array);

?>