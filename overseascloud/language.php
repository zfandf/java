<?php
define('ZZQSS',true);

$file1 = "language/templates.lang.php"; //�����ļ�1
$file2 = "language/templates_ewen.lang.php"; //�����ļ�2(Ӣ��)

$resultfile = 'ewen_templates.lang.php'; //���ɽ���ļ�

include($file1);
$langfirst = $lang;//��������
include($file2);

$resultarray = array_merge($langfirst,$lang);

$array = "<?php\n\$lang =  ".var_export($resultarray, true).";\n?>";

echo $array;//�������ļ�

$strlen = file_put_contents($resultfile, $array);

?>